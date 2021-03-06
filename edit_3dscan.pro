include (../../shared.pri)

QT += multimedia multimediawidgets serialport

HEADERS       = edit_3dscan_factory.h \
                scanDialog.h \
                ScanProc.h \
                myopenglwidget.h \
                webcamdlg.h \
                edit_3dscan.h \
                camerapreviewdlg.h \
                webcam.h \
                configuration.h \
                geometries.h \
                turntable.h \
                serial.h \
                cameraworker.h

SOURCES       = edit_3dscan_factory.cpp \
                edit_3dscan.cpp \
                scanDialog.cpp \
                ScanProc.cpp \
                myopenglwidget.cpp \
                webcamdlg.cpp \
                camerapreviewdlg.cpp \
                webcam.cpp \
                configuration.cpp \
                turntable.cpp \
                serial.cpp \
                cameraworker.cpp
				

TARGET        = edit_3dscan

FORMS	      = webcamdlg.ui \
                scandialog.ui


macx {
    message("Buildng for Mac.")

    INCLUDEPATH   += /usr/local/include/

    LIBS += -L/usr/local/lib/ \
            -lopencv_core \
            -lopencv_highgui \
            -lopencv_imgproc \
            -lopencv_imgcodecs \
            -lopencv_videoio
}

RESOURCES += \
    edit_3dscan.qrc
