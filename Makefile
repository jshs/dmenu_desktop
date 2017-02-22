PREFIX ?= /usr/local
MANPREFIX = $(PREFIX)/share/man

all:

clean:

install: all
	@echo installing executable to $(DESTDIR)$(PREFIX)/bin
	@mkdir -p "$(DESTDIR)$(PREFIX)/bin"
	@cp -f dmenu_desktop "$(DESTDIR)$(PREFIX)/bin"
	@chmod 755 "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"
	@echo installing manual page to $(DESTDIR)$(MANPREFIX)/man1
	@mkdir -p "$(DESTDIR)$(MANPREFIX)/man1"
	@cp -f dmenu_desktop.1 "$(DESTDIR)$(MANPREFIX)/man1"
	@chmod 644 "$(DESTDIR)$(MANPREFIX)/man1/dmenu_desktop.1"

uninstall:
	@echo removing executable from $(DESTDIR)$(PREFIX)/bin
	@rm -f "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"
	@echo removing manual page from $(DESTDIR)$(MANPREFIX)/man1
	@rm -f "$(DESTDIR)$(MANPREFIX)/man1/dmenu_desktop.1"

.PHONY: all clean install uninstall
