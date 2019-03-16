

AntTweakBar := ../AntTweakBar

CXX         := g++
CXXFLAGS    := -I $(AntTweakBar)/include -w -fpermissive
LDFLAGS     := -L $(AntTweakBar)/lib -lAntTweakBar -lX11 -lGL -lglfw -lXrandr -lrt -lGL -pthread -lm 

TARGET      := physics
OBJS        := BodyLinker.o CollisionTest.o Color.o Constants.o Constraints.o Designer.o Game.o Geometry.o Graphics.o Input.o MemoryAllocator.o Object.o Physics.o Polygon.o Scoper.o Settings.o Shape.o ShapeFactory.o Tests.o Timer.o main.o 



.PHONY: all build run clean
all: run


build: $(TARGET)

#$(TARGET): *.cpp
#	g++ *.cpp -o physics -I ./AntTweakBar/include -L ./AntTweakBar/lib -lAntTweakBar -lX11 -lGL -w -fpermissive -lglfw -lXrandr  -lrt -lX11 -lrt -lGL -pthread -lm

#refed libs should be behind the objs.
$(TARGET): $(OBJS)
	$(CXX) -o $@ $^ $(LDFLAGS)

include Makefile.dep
Makefile.dep:
	$(CXX) $(CXXFLAGS) -MM *.cpp > Makefile.dep

.cpp.o:
	$(CXX) $(CXXFLAGS) -o $@ -c $<


run: build
	LD_PRELOAD=$(AntTweakBar)/lib/libAntTweakBar.so:/usr/local/lib/libglfw.so ./$(TARGET)


clean:
	rm $(TARGET) *.o #Makefile.dep

