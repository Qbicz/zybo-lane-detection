#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

#include <iostream>
#include <string>
#include <algorithm>
#include <vector>

#include "fp.h"

// Hough transform for floating point
cv::Mat hough(const cv::Mat & src,
              double dphi,   // phi increment
              double drho) { // rho increment
    std::vector<double> cosphis; // TODO: vector of type fp
    std::vector<double> sinphis;
    cosphis.resize(180/dphi);
    sinphis.resize(cosphis.size());

    // Prepare cos and sin coefficients (constants for given dphi)
    for(int i = 0; i < (int)cosphis.size(); ++i) {
        cosphis[i] = std::cos(i*dphi * M_PI / 180);
        sinphis[i] = std::sin(i*dphi * M_PI / 180);
    }

    // Compute hough plane size (constants for given dphi and drho)
    int r = std::sqrt(src.cols*src.cols + src.rows*src.rows) + 1;
    int phic = cosphis.size();
    int rhoc = (2*r)/drho;

    // Allocate hough plane
    int ** hough_plane = new int *[phic];
    for(int i = 0; i < phic; ++i) {
        hough_plane[i] = new int[rhoc];
        for(int j = 0; j < rhoc; ++j) {
            hough_plane[i][j] = 0;
        }
    }

    // Compute hough transform
    for(int y = 0; y < src.rows; ++y) {
        for(int x = 0; x < src.cols; ++x) {
            uchar pix = src.at<uchar>(y,x);
            if(pix) {
                for(int i = 0; i < phic; ++i) {
                    double rho = cosphis[i]*x + sinphis[i]*y;
                    int j = (int)((rho + r)/drho); // rho is in (-r, r)
                    hough_plane[i][j] += 1;
                }
            }
        }
    }

    // Hough transform params
    std::cout << "phis count: " << phic << std::endl;
    std::cout << "rhos count: " << rhoc << std::endl;

    // Rewrite hough plane to cv::Mat
    cv::Mat him(rhoc, phic, CV_8UC1);
    for(int i = 0; i < phic; ++i) {
        for(int j = 0; j < rhoc; ++j) {
            him.at<uchar>(j,i) = hough_plane[i][j];
        }
    }
    return him;
}


// Hough Transform for fixed point fp
cv::Mat hough_fp(const cv::Mat & src,
              fp& dphi,   // phi increment
              fp& drho) { // rho increment
    std::vector<fp> cosphis; // TODO: vector of type fp
    std::vector<fp> sinphis;
    cosphis.resize(180/dphi);
    sinphis.resize(cosphis.size());

    // Prepare cos and sin coefficients (constants for given dphi)
    for(int i = 0; i < (int)cosphis.size(); ++i) {
        cosphis[i] = std::cos(i*dphi * M_PI / 180); // fp construction
        sinphis[i] = std::sin(i*dphi * M_PI / 180);
    }

    // Compute hough plane size (constants for given dphi and drho)
    int r = std::sqrt(src.cols*src.cols + src.rows*src.rows) + 1;
    int phic = cosphis.size();
    int rhoc = (2*r)/drho;

    // Allocate hough plane

    // ANALYZE FIXED P from here

    int ** hough_plane = new int *[phic];
    for(int i = 0; i < phic; ++i) {
        hough_plane[i] = new int[rhoc];
        for(int j = 0; j < rhoc; ++j) {
            hough_plane[i][j] = 0;
        }
    }

    // Compute hough transform
    for(int y = 0; y < src.rows; ++y) {
        for(int x = 0; x < src.cols; ++x) {
            uchar pix = src.at<uchar>(y,x);
            if(pix) {
                for(int i = 0; i < phic; ++i) {
                    fp x_f(0);
                    fp y_f(0);
                    x_f = (double)x;
                    y_f = (double)y;
                    fp rho = cosphis[i]*x_f + sinphis[i]*y_f; // 16 prec
                    int j = (int)((rho + r)/drho); // rho is in (-r, r)
                    hough_plane[i][j] += 1;
                }
            }
        }
    }

    // Hough transform params
    std::cout << "phis count: " << phic << std::endl;
    std::cout << "rhos count: " << rhoc << std::endl;

    // Rewrite hough plane to cv::Mat
    cv::Mat him(rhoc, phic, CV_8UC1);
    for(int i = 0; i < phic; ++i) {
        for(int j = 0; j < rhoc; ++j) {
            him.at<uchar>(j,i) = hough_plane[i][j];
        }
    }
    return him;
}



int main(int argc, char** argv) {
    if(argc < 2) {
        std::cout << "#no filename given" << std::endl;
        return -1;
    }

    std::string filename = argv[1];
    cv::Mat src = cv::imread(filename, 0);
    if(src.empty()) {
        std::cout << "#can not open file: " << filename << std::endl;
        return -1;
    }

    if(argc < 4) {
        std::cout << "#no hough plane gradation given" << std::endl;
        return -1;
    }
    fp dphi(11);
    fp drho(11);
    try {
        dphi = std::stod(argv[2]);
        drho = std::stod(argv[3]);
    } catch(std::invalid_argument & exc) {
        std::cout << "#invalid hough plane gradation given" << std::endl;
        return -1;
    }

    fp myFixed(6);
    myFixed = 5.1923;
    std::cout << (double)myFixed << std::endl;

    // Using fixed point Hough
    cv::Mat out = hough_fp(src, dphi, drho);
    std::vector<int> compression_params;
    compression_params.push_back(CV_IMWRITE_PXM_BINARY);
    compression_params.push_back(0);
    cv::imwrite(filename + "_out.ppm", out, compression_params);

 return 0;
}
