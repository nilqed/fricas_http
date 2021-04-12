# PATHS
CLSHRD=/usr/share/common-lisp
TARGET=$(CLSHRD)/source/fricas_http
ASDLNK=$(CLSHRD)/systems/fricas_http.asd
SRCDIR=$(shell pwd)/src
ASDFILE=fricas_http.asd
BINFILE=fricas_http
BINDIR=/usr/local/bin

# Make directories
MKDIR_P = mkdir -p

# Copy
COPY = cp
COPYV = cp -v
COPYR = cp -r 

# Remove
RMR = rm -r

# Make symbolic link
LINK = ln -s

# Lisp files
LISPFILES = webspad.lisp server.lisp json.lisp eval.lisp

.PHONY: precheck

.credirs:
			${MKDIR_P} $(TARGET)
			${MKDIR_P} $(TARGET)/src


precheck:
			@if ! [ -f /usr/local/bin/fricas  ];\
			then echo "FriCAS missing"; exit 1; fi
			@if ! [ -d $(CLSHRD)/source/cl-asdf ];\
			then echo "CL-ASDF missing"; exit 1; fi
			@if ! [ -d $(CLSHRD)/source/hunchentoot ];\
			then echo "CL-HUNCHENTOOT missing"; exit 1; fi           
			$(eval SBCLVER=$(shell sbcl --version))
			@echo ###
			@echo precheck completed.

test:
			@echo not yet implemented.
			
install:                precheck .credirs
			@echo "Installing ..."
			$(COPY) $(ASDFILE) $(TARGET)
			$(COPY) $(addprefix $(SRCDIR)/,$(LISPFILES)) $(TARGET)/src
			$(COPY) $(BINFILE) $(BINDIR)
			$(LINK) $(TARGET)/$(ASDFILE) $(ASDLNK)
			@echo ++++ fricas_html successfully installed.

uninstall:
			$(RMR) $(TARGET)
			$(RM) $(ASDLNK)
			$(RM) $(BINDIR)/$(BINFILE)


