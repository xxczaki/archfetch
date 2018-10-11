PREFIX ?= /usr

all:
	@echo Run \'make install\' to install archfetch!

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p archfetch $(DESTDIR)$(PREFIX)/bin/archfetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/archfetch
	@echo archfetch successfully installed!

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/archfetch
	@echo archfetch uninstalled!
