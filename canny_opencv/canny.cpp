#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <stdlib.h>
#include <stdio.h>

using namespace cv;

/// Global variables

Mat src, src_gray;
Mat dst, detected_edges;
Mat Hough_out;

int edgeThresh = 1;
int lowThreshold;
int CannyThreshold1;
int CannyThreshold2;
int const max_lowThreshold = 100;
int const max_CannyThreshold1=1000;
int const max_CannyThreshold2=1500;

int const max_HoughThreshold = 2000;
int HoughThreshold = 100;

int ratio = 3;
int kernel_size = 3;
int ImDepth;
const char* window_name = "Edge Map";
const char* window_name2 = "Hough Map";

/**
 * @function CannyThreshold
 * @brief Trackbar callback - Canny thresholds input with a ratio 1:3
 */
void CannyThreshold(int, void*)
{
  /// Reduce noise with a kernel 3x3
  blur( src_gray, detected_edges, Size(3,3) );

  /// Canny detector
  /// Canny( detected_edges, detected_edges, lowThreshold, lowThreshold*ratio, kernel_size );
  
  Canny( detected_edges, detected_edges, CannyThreshold1, CannyThreshold2, kernel_size );
  /// Using Canny's output as a mask, we display our result
  dst = Scalar::all(0);

  src_gray.copyTo( dst, detected_edges);
  cvtColor(detected_edges, Hough_out, CV_GRAY2BGR);

  // Hough
#if 1
    vector<Vec2f> lines;
    HoughLines(detected_edges, lines, 1, CV_PI/180, HoughThreshold, 0, 0 );

    for( size_t i = 0; i < lines.size(); i++ )
    {
        float rho = lines[i][0], theta = lines[i][1];
        Point pt1, pt2;
        double a = cos(theta), b = sin(theta);
        double x0 = a*rho, y0 = b*rho;
        pt1.x = cvRound(x0 + 1000*(-b));
        pt1.y = cvRound(y0 + 1000*(a));
        pt2.x = cvRound(x0 - 1000*(-b));
        pt2.y = cvRound(y0 - 1000*(a));
        line( Hough_out, pt1, pt2, Scalar(0,0,255), 3, CV_AA);
    }
 #else
    vector<Vec4i> lines;
    HoughLinesP(dst, lines, 1, CV_PI/180, 50, 50, 10 );
    for( size_t i = 0; i < lines.size(); i++ )
    {
      Vec4i l = lines[i];
      line( cdst, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(0,0,255), 3, CV_AA);
    }
 #endif


    /// Save image
  imwrite("LennaCanny.ppm", dst);
  imshow( window_name, detected_edges );
  imshow( window_name2, Hough_out);
  //imwrite("Hough.jpg", Hough_out);
 }

void Hough()
{

}

/** @function main */
int main( int argc, char** argv )
{
  /// Load an image
  src = imread( argv[1] );

  if( !src.data )
  { return -1; }

  /// Create a matrix of the same type and size as src (for dst)
  dst.create( src.size(), src.type() );

  /// Convert the image to grayscale
  cvtColor( src, src_gray, CV_BGR2GRAY , CV_8U);

  /// Save image
  imwrite("LennaGray.ppm", src_gray);

  /// Create a window
  namedWindow( window_name, CV_WINDOW_AUTOSIZE );

  /// Create a hough window
  namedWindow( window_name2, CV_WINDOW_AUTOSIZE );

  /// Create a Trackbar for user to enter threshold
  createTrackbar( "Hough Threshold:", window_name, &HoughThreshold, max_HoughThreshold, CannyThreshold );
  
  createTrackbar( "Canny Threshold1:", window_name, &CannyThreshold1, max_CannyThreshold1, CannyThreshold );
  createTrackbar( "Canny Threshold2:", window_name, &CannyThreshold2, max_CannyThreshold2, CannyThreshold );
 
  /// Show the image
  CannyThreshold(0, 0);
  
  /// Wait until user exit program by pressing a key
  waitKey(0);

  return 0;
  }
