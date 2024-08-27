PROJECT=sh-alert-scripts
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: README.md COPYING COPYRIGHT
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md COPYING COPYRIGHT $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:profile --
install: install-profile
install-profile:
	mkdir -p $(DESTDIR)/etc/profile.d
	cp etc/profile.d/fga.sh $(DESTDIR)/etc/profile.d/fga.sh
	chmod +x $(DESTDIR)/etc/profile.d/fga.sh
## -- BLOCK:profile --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/alert-ntfy $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
