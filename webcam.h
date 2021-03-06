#ifndef WEBCAM_H
#define WEBCAM_H

#include <opencv2/highgui/highgui.hpp>
#include <QObject>
#include <cameraworker.h>

using namespace cv;

class webcam: public QObject
{
public:
    webcam();
    ~webcam();

    void start();
    void stop();
    bool read(Mat& image);
    bool getImageFromCamera();

private:
    int m_iRefCount;
    VideoCapture *m_vcap;
    Mat m_image;
    cameraworker *m_cameraworker;
    QMutex m_mutexImage;
    bool m_bGotImage;
};

#endif // WEBCAM_H
