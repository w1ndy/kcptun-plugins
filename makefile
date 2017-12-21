.PHONY: install
install: kcptun-client-plugin kcptun-server-plugin lib
	install -d $(DESTDIR)/usr/local/kcptun_plugins/
	install -m 755 ss-proxy kcptun-client-plugin kcptun-server-plugin lib $(DESTDIR)/usr/local/kcptun_plugins/
	ln -sf $(DESTDIR)/usr/local/kcptun_plugins/ss-proxy $(DESTDIR)/usr/bin/ss-proxy
	ln -sf $(DESTDIR)/usr/local/kcptun_plugins/kcptun-client-plugin $(DESTDIR)/usr/bin/kcptun-client-plugin
	ln -sf $(DESTDIR)/usr/local/kcptun_plugins/kcptun-server-plugin $(DESTDIR)/usr/bin/kcptun-server-plugin
