CXXFLAGS =	-O2 -g -Wall -fmessage-length=0

OBJS =		xy_chromacity.o

LIB_PATH = -L/usr/lib/i386-linux-gnu

LIBS =  -lopencv_core \
		-lopencv_imgproc \
		-lopencv_highgui \
		-lopencv_ml \
		-lopencv_video \
		-lopencv_features2d \
		-lopencv_calib3d \
		-lopencv_objdetect \
		-lopencv_contrib \
		-lopencv_legacy \
		-lopencv_flann

TARGET =	xy_chromacity

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIB_PATH) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
