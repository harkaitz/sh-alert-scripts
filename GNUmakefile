PROJECT=sh-alert-scripts
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: README.md COPYING COPYRIGHT
	install -d $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	install -c -m 644 README.md COPYING COPYRIGHT $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
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
	install -d $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/alert-ntfy $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/alert-cmd $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
