INSTALL ?= install
SHELLCHECK ?= shellcheck

.PHONY: all check install

all:

check:
	$(SHELLCHECK) gen-efistub-boot-entries

install:
	$(INSTALL) -D -m 0755 -t "$(DESTDIR)/usr/bin" gen-efistub-boot-entries
	$(INSTALL) -D -m 0755 -T hooks/gen-efistub-boot-entries-hook-kernel-postinst "$(DESTDIR)/etc/kernel/postinst.d/zzz-gen-efistub-boot-entries-hook"
	$(INSTALL) -D -m 0755 -T hooks/gen-efistub-boot-entries-hook-kernel-postrm "$(DESTDIR)/etc/kernel/postrm.d/zzz-gen-efistub-boot-entries-hook"
	$(INSTALL) -D -m 0644 -t "$(DESTDIR)$(or $(DOCDIR),/usr/share/doc/gen-efistub-boot-entries)" README.md
