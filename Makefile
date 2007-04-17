BUD = bud
REBUILD=rebuild

all:
	cd wxc
	make
	cd ..
	cd wx
	make
	cd ..

test:
	cd Samples
	make
	cd ..

build:
	cd wxc
	make build
	cd ..

bud: build build.brf
	cd wxc
	make build
	cd ..
	$(BUD) @build.brf -op -allobj
	move wx\wx.lib wxd.lib

rebuild: build build.brf
	cd wxc
	make build
	cd ..
	$(REBUILD) -rfbuild.brf -oqwx
	move wx.wx wxd.lib

clean:
	cd wx
	make clean
	cd ..
	cd wxc
	make clean
	cd ..
	cd Samples
	make clean
	cd ..

