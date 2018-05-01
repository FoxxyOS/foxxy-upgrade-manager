all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/applications
	mkdir -p $(DESTDIR)/usr/share/foxxy-upgrade-manager
	chown root:root -R icons full-upgrade.sh foxxy-upgrade
	cp full-upgrade.sh $(DESTDIR)/usr/share/foxxy-upgrade-manager/
	cp -r icons $(DESTDIR)/usr/share/foxxy-upgrade-manager/
	cp foxxy-upgrade $(DESTDIR)/usr/bin/
	cp upgrade-manager-foxxy.desktop $(DESTDIR)/usr/share/applications/upgrade-manager-foxxy.desktop
	chmod 0755 $(DESTDIR)/usr/share/foxxy-upgrade-manager/full-upgrade.sh
	chmod 0755 $(DESTDIR)/usr/bin/foxxy-upgrade
