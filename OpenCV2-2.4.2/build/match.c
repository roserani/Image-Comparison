    /* 
    Detects SIFT features in two images and finds matches between them. 
     
    Copyright (C) 2006  Rob Hess <hess@eecs.oregonstate.edu> 
     
    @version 1.1.1-20070330  
     
    */   
       
    
    #pragma comment (lib,"cv")   
    #pragma comment (lib,"highgui")   
    #pragma comment (lib, "cxcore")   
       
   
    #pragma comment (lib, "libgsl.a")   
       
      
    #include "sift.h"  
    #include "imgfeatures.h"  
    #include "kdtree.h"  
    #include "utils.h"  
    #include "xform.h"  
      
    #include "cv.h"  
    #include "cxcore.h"  
    #include "highgui.h"  
      
    #include <stdio.h>   
    #include <stdlib.h>  
    #include <iostream.h>  
    //#include <Afxtempl.h>  
    /* the maximum number of keypoint NN candidates to check during BBF search */   
    #define KDTREE_BBF_MAX_NN_CHKS 200  
    // #define KDTREE_BBF_MAX_NN_CHKS 300   
      
    /* threshold on squared ratio of distances between NN and 2nd NN */  
    #define NN_SQ_DIST_RATIO_THR 0.49   
    // #define NN_SQ_DIST_RATIO_THR 0.6   
    //#define NN_SQ_DIST_RATIO_THR 0.3  
       
    #define nwid 5   
    #define nhigh 8  
    /******************************** Globals ************************************/  
      
    char img1_file[] = ".\\beaver.png";          
    char img2_file[] = ".\\beaver_xform.png";   
       
    //char img1_file[] = ".\\034.JPG";   			// file changed by you      
    //char img2_file[] = ".\\035.JPG";   
    //char img1_file[] = ".\\spot56³õÊ¼Åä×¼.bmp";        
    //char img2_file[] = ".\\radarsat6³õÊ¼Åä×¼.bmp";   
       
       
    double imgzoom_scale=1.0;            
       
    /*  
     
    int nwid,nhigh;  
    nwid = 3;  
    nhigh = 4;  
    */             
       
    IplImage* stacked;   
       
       
    /**************************other functions **************************************/   
       
       
    
    void on_mouse( int event, int x, int y, int flags, void* param ) ;   
       
    
       
    void resize_img();   
      
    /********************************** Main *************************************/  
      
      
    int main( int argc, char** argv )  
    {   
       
        IplImage* img1, * img2;   
        struct feature* feat1, * feat2, * feat;   
        struct feature** nbrs;   
        struct kd_node* kd_root;   
        CvPoint pt1, pt2;   
        double d0, d1;   
        int n1, n2, k, i, m = 0;   
        /////////////////////////////////////////////////////////////////////   
        int upimgwid,upimghigh;   
        int downimgwid,downimghigh;   
        int upwid,uphigh;   
        int downwid,downhigh;   
        struct feature *upfeat[nwid*nhigh];   
        struct feature *downfeat[nwid*nhigh];   
        int numdown[nwid*nhigh] = {0};   
        int numup[nwid*nhigh] = {0};   
        int j;   
           
        /////////////////////////////////////////////////////////////////////   
        double tempx,tempy;   
        int tempnwid,tempnhigh;   
        ///////////////////////////////////////////////////////////////////////   
       
        CvMemStorage* memstorage = cvCreateMemStorage(0);   
       
        
        CvSeq *up_seq = cvCreateSeq(    CV_SEQ_ELTYPE_POINT,   
                        sizeof(CvSeq),   
                        sizeof(CvPoint),   
                        memstorage);    
       
 
       
        CvSeq *down_seq = cvCreateSeq(  CV_SEQ_ELTYPE_POINT,   
                        sizeof(CvSeq),   
                        sizeof(CvPoint),   
                        memstorage);    
    
      
        img1 = cvLoadImage( img1_file, 1 );  
        if( ! img1 )  
            fatal_error( "unable to load image from %s", img1_file );   
          
        upimgwid = img1->width;   
        upimghigh = img1->height;   
        upwid = upimgwid/nwid;   
        uphigh = upimghigh/nhigh;   
        
        img2 = cvLoadImage( img2_file, 1 );  
        if( ! img2 )  
            fatal_error( "unable to load image from %s", img2_file );   
         
        downimgwid = img2->width;   
        downimghigh = img2->height;   
        downwid = downimgwid/nwid;   
        downhigh = downimghigh/nhigh;   
      
        stacked = stack_imgs( img1, img2 );  
       
      
        fprintf( stderr, "Finding features in %s...\n", img1_file );  
        n1 = sift_features( img1, &feat1 );   
       
           
      
        fprintf( stderr, "Finding features in %s...\n", img2_file );  
        n2 = sift_features( img2, &feat2 );   
       
       
       
       
        if(1)   
        {   
            draw_features( img1, feat1, n1 );   
            cvNamedWindow( "img1_feature", 1 );   
            cvShowImage( "img1_feature", img1 );   
               
        }   
       
       
         
        if(1)   
        {   
            draw_features( img2, feat2, n2 );   
            cvNamedWindow( "img2_feature", 1 );   
            cvShowImage( "img2_feature", img2 );   
        }   
          
         
        for(i=0;i<nwid*nhigh;i++)   
        {   
            upfeat[i] = NULL;   
            upfeat[i] = malloc(300*sizeof(struct feature));    
            downfeat[i] = NULL;   
            downfeat[i] = malloc(300*sizeof(struct feature));   
        }   
        for(i=0;i<n2;i++)   
        {   
            tempx = (*feat2).x;   
            tempy = (*feat2).y;   
            tempnwid = tempx/downwid;   
            if(tempnwid == nwid)   
                tempnwid = nwid -1;   
            tempnhigh = tempy/downhigh;   
            if(tempnhigh == nhigh)   
                tempnhigh = nhigh-1;   
    //      *(*(downfeat+tempnhigh*nwid+tempnwid)) = feat2;   
            *(downfeat[tempnhigh*nwid+tempnwid]+*(numdown+tempnhigh*nwid+tempnwid)) = *feat2;   
            (*(numdown+tempnhigh*nwid+tempnwid))++;   
    //       (downfeat[tempnhigh*nwid+tempnwid]) ++;   
            feat2 ++;   
        }   
       
        for(i=0;i<n1;i++)   
        {   
            tempx = (*feat1).x;   
            tempy = (*feat1).y;   
            tempnwid = tempx/upwid;   
            if(tempnwid == nwid)   
                tempnwid = nwid -1;   
            tempnhigh = tempy/uphigh;   
            if(tempnhigh == nhigh)   
                tempnhigh = nhigh-1;   
            *(upfeat[tempnhigh*nwid+tempnwid]+*(numup+tempnhigh*nwid+tempnwid)) = *feat1;   
            (*(numup+tempnhigh*nwid+tempnwid))++;   
    //        (*(upfeat+tempnhigh*nwid+tempnwid))++;   
            feat1 ++;   
        }   
         
    /* 
        kd_root = kdtree_build( feat2, n2 );  
        
          
     
        for( i = 0; i < n1; i++ ) 
        { 
            feat = feat1 + i; 
            k = kdtree_bbf_knn( kd_root, feat, 2, &nbrs, KDTREE_BBF_MAX_NN_CHKS ); 
            if( k == 2 ) 
            { 
                d0 = descr_dist_sq( feat, nbrs[0] ); 
                d1 = descr_dist_sq( feat, nbrs[1] ); 
                if( d0 < d1 * NN_SQ_DIST_RATIO_THR ) 
                { 
                    pt1 = cvPoint( cvRound( feat->x ), cvRound( feat->y ) );  
                    pt2 = cvPoint( cvRound( nbrs[0]->x ), cvRound( nbrs[0]->y ) );  
      
                    //---------´æ´¢µ¥¸öµã×ø±êµ½µãÐòÁÐÖÐ----------  
                    cvSeqPush(up_seq,&pt1);   
                    cvSeqPush(down_seq,&pt2);  
     
                    pt2.y += img1->height;  
                   cvLine( stacked, pt1, pt2, CV_RGB(255,0,255), 1, 8, 0 );  
                 
                    m++; 
                    feat1[i].fwd_match = nbrs[0];  
      
                     
                } 
            } 
            free( nbrs ); 
        }  
    */   
        //  fprintf( stderr, "Found %d total matches\n", m );   
       
    //  nbrs = NULL;   
        //°´¿éÑ°ÕÒÆ¥Åäµã   
        for(i=0;i<nwid*nhigh;i++)   
        {   
            if(numdown[i] == 0)   
                continue;   
            kd_root = kdtree_build( downfeat[i], numdown[i]);   
            for(j=0;j<*(numup+i);j++)   
            {   
                if(numup[i] == 0)   
                    continue;   
                feat = upfeat[i]+j;   
                k = kdtree_bbf_knn( kd_root, feat, 2, &nbrs, KDTREE_BBF_MAX_NN_CHKS );   
                    if( k == 2 )   
            {   
                d0 = descr_dist_sq( feat, nbrs[0] );   
                d1 = descr_dist_sq( feat, nbrs[1] );   
                if( d0 < d1 * NN_SQ_DIST_RATIO_THR )   
                {   
                    pt1 = cvPoint( cvRound( feat->x ), cvRound( feat->y ) );   
                    pt2 = cvPoint( cvRound( nbrs[0]->x ), cvRound( nbrs[0]->y ) );   
       
                   
                    cvSeqPush(up_seq,&pt1);    
                    cvSeqPush(down_seq,&pt2);   
       
                    pt2.y += img1->height;   
                   cvLine( stacked, pt1, pt2, CV_RGB(255,0,255), 1, 8, 0 );   
                   
                    m++;   
                    feat->fwd_match = nbrs[0];                  
                }   
            }   
            free(nbrs);   
    //      free( nbrs[0] );   
    //      nbrs[0] = NULL;   
    //      free(nbrs[1]);   
    //      nbrs[1] = NULL;   
    //      nbrs = NULL;   
            }   
            kdtree_release( kd_root );   
               
            free(upfeat[i]);   
            upfeat[i] = NULL;   
            free(downfeat[i]);   
            downfeat[i] = NULL;   
               
        }   
       
       
       
          
    //  int total = 0;   
        /*  
        CvSeq *up_seq2 = cvCreateSeq(   CV_SEQ_ELTYPE_POINT,  
                    sizeof(CvSeq),  
                    sizeof(CvPoint),  
                    memstorage);   
      
        CvSeq *down_seq2 = cvCreateSeq( CV_SEQ_ELTYPE_POINT,  
                        sizeof(CvSeq),  
                        sizeof(CvPoint),  
                        memstorage);   
       */   
    //  CPoint p1,p2,p3,p4;   
         
       
    //  if((oriimg1 = fopen("oriofimage1.txt","w+"))==NULL)   
    //  cout<<"file open error"<<endl;   
       
    //  if((oriimg1 = fopen("oriofimage2.txt","w+"))==NULL)   
    //  cout<<"file open error"<<endl;   
       
       
       
       
       
          
       
        cvSave("upimg_matched_points.xml", up_seq, NULL, "matched_points_up", cvAttrList(NULL,NULL));   
        cvSave("downimg_matched_points.xml", down_seq, NULL, "matched_points_down", cvAttrList(NULL,NULL));   
       
         
       
        fprintf( stderr, "%d ¸öÆ¥ÅäµÄµãµÄ×ø±êÒÑ·Ö±ð±£´æµ½ÎÄ¼þ:\n upimg_matched_points.xmlºÍdownimg_matched_points.xml\n", m);   //check here
      
        resize_img();   
      
        cvWaitKey( 0 );  
      
      
        /*  
        UNCOMMENT BELOW TO SEE HOW RANSAC FUNCTION WORKS 
     
        Note that this line above: 
     
        feat1[i].fwd_match = nbrs[0]; 
     
        is important for the RANSAC function to work. 
        */  
        /* 
        { 
            CvMat* H; 
            H = ransac_xform( feat1, n1, FEATURE_FWD_MATCH, lsq_homog, 4, 0.01, 
                homog_xfer_err, 3.0, NULL, NULL ); 
            if( H ) 
            { 
                IplImage* xformed; 
                xformed = cvCreateImage( cvGetSize( img2 ), IPL_DEPTH_8U, 3 ); 
                cvWarpPerspective( img1, xformed, H,  
                    CV_INTER_LINEAR + CV_WARP_FILL_OUTLIERS, 
                    cvScalarAll( 0 ) ); 
                cvNamedWindow( "Xformed", 1 ); 
                cvShowImage( "Xformed", xformed ); 
                cvWaitKey( 0 ); 
                cvReleaseImage( &xformed ); 
                cvReleaseMat( &H ); 
            } 
        } 
        */   
       
        //------ÊÍ·ÅÄÚ´æ´æ´¢Æ÷-----------   
        cvReleaseMemStorage( &memstorage );  
        cvReleaseImage( &stacked );  
        cvReleaseImage( &img1 );  
        cvReleaseImage( &img2 );  
    //  kdtree_release( kd_root );   
      
        free( feat1 );    
        feat1 = NULL;  
        free( feat2 );   
        feat2 = NULL;  
        return 0;  
    }  
       
       
       
    void on_mouse( int event, int x, int y, int flags, void* param )    
    {   
        if( (event==CV_EVENT_LBUTTONUP) &&  (flags==CV_EVENT_FLAG_CTRLKEY) )    
        {   
                       
        }   
           
           
           
        if( (event==CV_EVENT_LBUTTONUP) &&  (flags==CV_EVENT_FLAG_ALTKEY) )    
             
        {   
               
                
            if(imgzoom_scale<1.5)   
            {   
                imgzoom_scale=1.1*imgzoom_scale;   
            }   
               
            else imgzoom_scale=1.0;   
               
            resize_img();   
       
        }   
           
        if( (event==CV_EVENT_RBUTTONUP) &&  (flags==CV_EVENT_FLAG_ALTKEY) )    
               
            
        {   
               
               
               
            if(imgzoom_scale>0.0)   
            {   
                imgzoom_scale=0.9*imgzoom_scale;   
            }   
               
            else imgzoom_scale=0.5;   
       
           
            resize_img();   
       
            //printf("%f\n",imgzoom_scale);   
       
        }   
           
       
    }   
       
       
       
   
       
    void resize_img()   
    {   
        IplImage* resize_stacked;   
       
        resize_stacked=cvCreateImage(cvSize(  (int)(stacked->width*imgzoom_scale),  (int)(stacked->height*imgzoom_scale)  ),   
                    stacked->depth,   
                    stacked->nChannels);   
        
       
        cvResize(stacked, resize_stacked, CV_INTER_AREA );   
           
    
       
        cvNamedWindow( "Matches", 1 );   
       
           
        
           
        cvSetMouseCallback("Matches", on_mouse, 0 );   
           
       
        cvShowImage( "Matches", resize_stacked);   
       
        cvWaitKey( 0 );   
       
       
       
       
    }  
