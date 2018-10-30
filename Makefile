PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Truelies.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p truelies $(DESTDIR)$(PREFIX)/bin/truelies
	@cp -p truelies.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/truelies
	@echo You have successfully - installed - Truelies.

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/truelies
	@rm -rf $(DESTDIR)$(MANDIR)/man1/truelies.1*
	@echo You have successfully - uninstalled - Truelies.
