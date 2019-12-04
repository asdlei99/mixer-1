#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I../third-party/ffSDK/include -I../third-party/ffSDK/src
CFLAGS = -std=c++11 -Wall -fexceptions -fPIC
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = -lboost_system -lboost_date_time -lboost_filesystem -lboost_regex -lavformat -lavcodec

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = ../obj/Debug/media
DEP_DEBUG = 
OUT_DEBUG = ../lib/libmedia.so

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = ../obj/Release/media
DEP_RELEASE = 
OUT_RELEASE = ../lib/libmedia.so

OBJ_DEBUG = $(OBJDIR_DEBUG)/dump.o $(OBJDIR_DEBUG)/main.o $(OBJDIR_DEBUG)/media_filter.o $(OBJDIR_DEBUG)/media_frame.o $(OBJDIR_DEBUG)/media_thread_pool.o $(OBJDIR_DEBUG)/media_type.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/dump.o $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/media_filter.o $(OBJDIR_RELEASE)/media_frame.o $(OBJDIR_RELEASE)/media_thread_pool.o $(OBJDIR_RELEASE)/media_type.o

all: before_build build_debug build_release after_build

clean: clean_debug clean_release

before_build: 

after_build: 
	cp -f ../lib/libmedia.so /usr/local/lib/libmedia.so

before_debug: 
	test -d ../lib || mkdir -p ../lib
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

build_debug: before_debug out_debug after_debug

debug: before_build build_debug after_build

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) -shared $(LIBDIR_DEBUG) $(OBJ_DEBUG)  -o $(OUT_DEBUG) $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/dump.o: dump.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dump.cpp -o $(OBJDIR_DEBUG)/dump.o

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

$(OBJDIR_DEBUG)/media_filter.o: media_filter.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c media_filter.cpp -o $(OBJDIR_DEBUG)/media_filter.o

$(OBJDIR_DEBUG)/media_frame.o: media_frame.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c media_frame.cpp -o $(OBJDIR_DEBUG)/media_frame.o

$(OBJDIR_DEBUG)/media_thread_pool.o: media_thread_pool.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c media_thread_pool.cpp -o $(OBJDIR_DEBUG)/media_thread_pool.o

$(OBJDIR_DEBUG)/media_type.o: media_type.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c media_type.cpp -o $(OBJDIR_DEBUG)/media_type.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf ../lib
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d ../lib || mkdir -p ../lib
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

build_release: before_release out_release after_release

release: before_build build_release after_build

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) -shared $(LIBDIR_RELEASE) $(OBJ_RELEASE)  -o $(OUT_RELEASE) $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/dump.o: dump.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dump.cpp -o $(OBJDIR_RELEASE)/dump.o

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/media_filter.o: media_filter.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c media_filter.cpp -o $(OBJDIR_RELEASE)/media_filter.o

$(OBJDIR_RELEASE)/media_frame.o: media_frame.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c media_frame.cpp -o $(OBJDIR_RELEASE)/media_frame.o

$(OBJDIR_RELEASE)/media_thread_pool.o: media_thread_pool.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c media_thread_pool.cpp -o $(OBJDIR_RELEASE)/media_thread_pool.o

$(OBJDIR_RELEASE)/media_type.o: media_type.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c media_type.cpp -o $(OBJDIR_RELEASE)/media_type.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf ../lib
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_build after_build before_debug after_debug clean_debug before_release after_release clean_release

