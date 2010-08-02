
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /C/Ruby187/lib/ruby/1.8/i386-mingw32
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)

DESTDIR = C:
exec_prefix = $(prefix)
prefix = $(DESTDIR)/Ruby187
sharedstatedir = $(prefix)/com
mandir = $(datarootdir)/man
psdir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
localedir = $(datarootdir)/locale
bindir = $(exec_prefix)/bin
libexecdir = $(exec_prefix)/libexec
sitedir = $(libdir)/ruby/site_ruby
htmldir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)
includedir = $(prefix)/include
infodir = $(datarootdir)/info
vendorlibdir = $(vendordir)/$(ruby_version)
sysconfdir = $(prefix)/etc
libdir = $(exec_prefix)/lib
sbindir = $(exec_prefix)/sbin
rubylibdir = $(libdir)/ruby/$(ruby_version)
docdir = $(datarootdir)/doc/$(PACKAGE)
dvidir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
datarootdir = $(prefix)/share
pdfdir = $(docdir)
archdir = $(rubylibdir)/$(arch)
sitearchdir = $(sitelibdir)/$(sitearch)
datadir = $(datarootdir)
localstatedir = $(prefix)/var
sitelibdir = $(sitedir)/$(ruby_version)

CC = gcc
LIBRUBY = lib$(LIBRUBY_SO).a
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -g -O2 -DFD_SETSIZE=256  $(cflags) -g 
INCFLAGS = -I. -I. -IC:/Ruby187/lib/ruby/1.8/i386-mingw32 -I.
DEFS     = 
CPPFLAGS = -DHAVE_UNISTD_H -DHAVE_LOCALE_H -DHAVE_CURSES_H -DHAVE_TABSIZE -DHAVE_CURSES_VERSION -DHAVE_TIGETSTR -DHAVE_GETWIN -DHAVE_PUTWIN -DHAVE_UNGETMOUSE -DHAVE_MOUSEMASK -DHAVE_WENCLOSE -DHAVE_MOUSEINTERVAL -DHAVE_WMOUSE_TRAFO -DHAVE_HAS_KEY -DHAVE_DELSCREEN -DHAVE_USE_DEFAULT_COLORS -DHAVE_WRESIZE -DHAVE_ATTR_ON -DHAVE_ATTR_OFF -DHAVE_ATTR_SET -DHAVE_CHGAT -DHAVE_COLOR_SET -DHAVE_FILTER -DHAVE_INTRFLUSH -DHAVE_MVCHGAT -DHAVE_MVHLINE -DHAVE_MVVLINE -DHAVE_MVWCHGAT -DHAVE_MVWHLINE -DHAVE_MVWVLINE -DHAVE_NOQIFLUSH -DHAVE_PUTP -DHAVE_QIFLUSH -DHAVE_SCR_DUMP -DHAVE_SCR_INIT -DHAVE_SCR_RESTORE -DHAVE_SCR_SET -DHAVE_SLK_ATTR_OFF -DHAVE_SLK_ATTR_ON -DHAVE_SLK_ATTR_SET -DHAVE_SLK_COLOR -DHAVE_TIGETFLAG -DHAVE_TIGETNUM -DHAVE_USE_ENV -DHAVE_VIDATTR -DHAVE_VID_ATTR -DHAVE_WATTR_ON -DHAVE_WATTR_OFF -DHAVE_WATTR_SET -DHAVE_WCHGAT -DHAVE_WCOLOR_SET -DHAVE_GETATTRS -DHAVE_ASSUME_DEFAULT_COLORS -DHAVE_ATTR_GET -DHAVE_PANEL_H   
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. 
dldflags =  -Wl,--enable-auto-image-base,--enable-auto-import,--export-all
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = gcc -shared -s
AR = ar
EXEEXT = .exe

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = msvcrt-ruby18
arch = i386-mingw32
sitearch = i386-msvcrt
ruby_version = 1.8
ruby = C:/Ruby187/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lpdcurses  -lshell32 -lws2_32  
SRCS = form_wrap.c menu_wrap.c ncurses_wrap.c panel_wrap.c
OBJS = form_wrap.o menu_wrap.o ncurses_wrap.o panel_wrap.o
TARGET = ncursesw_bin
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR    = $(sitelibdir)$(target_prefix)
RUBYARCHDIR   = $(sitearchdir)$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/ncursesw.rb
$(RUBYLIBDIR)/ncursesw.rb: $(srcdir)/lib/ncursesw.rb $(RUBYLIBDIR)
	$(INSTALL_DATA) $(srcdir)/lib/ncursesw.rb $(@D)
$(RUBYARCHDIR):
	$(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
