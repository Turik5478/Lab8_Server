QT += core \
    widgets
QT += network
QT += xml

CONFIG += c++17 console

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        clientconnection.cpp \
        gost.cpp \
        main.cpp\
        mainwindow.cpp \
        sslserver.cpp
HEADERS += \
    clientconnection.h \
    gost.h \
    mainwindow.h \
    type.h \
    sslserver.h
RESOURCES += keys.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


win32: LIBS += -L$$PWD/../../../../../F/Qt/Tools/OpenSSL/Win_x64/lib/ -llibcrypto

INCLUDEPATH += $$PWD/../../../../../F/Qt/Tools/OpenSSL/Win_x64/include
DEPENDPATH += $$PWD/../../../../../F/Qt/Tools/OpenSSL/Win_x64/include
