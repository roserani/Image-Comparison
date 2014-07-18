#include <cv.h>
#include <cvaux.h>
#include <highgui.h>
using namespace cv;
int main(int argc, char* argv[ ]){
Mat image = imread(argv[1]);
namedWindow(“Sample Window”);
imshow(“Sample Window”,image);
waitKey(0);
return 0;
}
