
RUBY=ruby27
PERL=perl
REMOTEDIR=terebi:Dropbox/xfer

all: rework compile xfer
rework:
	$(RUBY) mak/rework.rb src/aac42.hp42 > tmp/aac42.hp41
compile:
	$(PERL) mak/txt2raw.pl tmp/aac42.hp41
xfer:
	scp tmp/aac42.hp41 $(REMOTEDIR)/aac42.txt
	scp tmp/aac42.hp41.raw $(REMOTEDIR)/aac42.raw


.PHONY: rework compile xfer

