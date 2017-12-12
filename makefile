ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

.PHONY: install
install: kcptun-client-plugin kcptun-server-plugin lib
	install -d $(DESTDIR)$(PREFIX)/kcptun_plugins/
	install -m 755 kcptun-client-plugin kcptun-server-plugin lib $(DESTDIR)$(PREFIX)/kcptun_plugins/
	ln -sf $(DESTDIR)$(PREFIX)/kcptun_plugins/kcptun-client-plugin $(DESTDIR)/usr/bin/kcptun-client-plugin
	ln -sf $(DESTDIR)$(PREFIX)/kcptun_plugins/kcptun-server-plugin $(DESTDIR)/usr/bin/kcptun-server-plugin
