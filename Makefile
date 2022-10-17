
RUBY=ruby27
PERL=perl
REMOTEDIR=terebi:Dropbox/xfer

all: rework compile xfer
rework:
	$(RUBY) mak/rework.rb src/aac42.txt > tmp/aac42.txt
compile:
	$(PERL) mak/txt2raw.pl tmp/aac42.txt
xfer:
	scp tmp/aac42.txt $(REMOTEDIR)/
	scp tmp/aac42.txt.raw $(REMOTEDIR)/aac42.raw


.PHONY: rework compile xfer

