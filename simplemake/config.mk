# Install paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man
TESSDATAPREFIX = $(PREFIX)/share/tesseract-ocr

# Options and optional dependencies (uncomment lines to enable features)
#OPENCL_CPPFLAGS = -DUSE_OPENCL -I/opt/AMDAPP/include
#OPENCL_LDFLAGS = -lOpenCL -ltiff
#NOGRAPHICS_CPPFLAGS = -DGRAPHICS_DISABLED
#EMBEDDED_CPPFLAGS = -DEMBEDDED
#VISIBILITY_CPPFLAGS = -DTESS_EXPORTS -fvisibility=hidden -fvisibility-inlines-hidden

# Dependencies needed for training tools
ICU_LDFLAGS = -licui18n -licuuc -licudata
PANGO_CPPFLAGS = -DPANGO_ENABLE_ENGINE -pthread -I/usr/include/pango-1.0 -I/usr/include/cairo \
                 -I/usr/include/glib-2.0 -I/usr/lib/i386-linux-gnu/glib-2.0/include \
                 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/lib/i386-linux-gnu/glib-2.0/include \
                 -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12
PANGO_LDFLAGS = -lpangocairo-1.0 -lcairo -lpangoxft-1.0 -lpangoft2-1.0 -lpango-1.0 \
                -lfreetype -lfontconfig -lgobject-2.0 -lglib-2.0

# Mandatory dependencies
# The pkgconfig file for leptonica is broken in 1.70
LEPT_CPPFLAGS = -I/usr/include/leptonica -I/usr/local/include/leptonica
LEPT_LDFLAGS = -llept

# Dependencies needed for scrollview
SCROLLVIEW_CLASSPATH = java/piccolo2d-core-3.0.jar:java/piccolo2d-extras-3.0.jar

# Build tools
CXX = g++
LD = $(CXX)
AR = ar
JAVAC = javac
JAR = jar
