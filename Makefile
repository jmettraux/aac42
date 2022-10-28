
RUBY=ruby27
PERL=perl
#REMOTEDIR=terebi:Dropbox/xfer
REMOTEDIR=azuma:tmp

all: aac42 digit
aac42:
	$(RUBY) mak/rework.rb src/aac42.hp42 > tmp/aac42.hp41
	$(PERL) mak/txt2raw.pl tmp/aac42.hp41
	scp tmp/aac42.hp41 $(REMOTEDIR)/aac42.txt
	scp tmp/aac42.hp41.raw $(REMOTEDIR)/aac42.raw
a: aac42
digit:
	$(RUBY) mak/rework.rb src/digit.hp42 > tmp/digit.hp41
	$(PERL) mak/txt2raw.pl tmp/digit.hp41
	scp tmp/digit.hp41 $(REMOTEDIR)/digit.txt
	scp tmp/digit.hp41.raw $(REMOTEDIR)/digit.raw
d: digit

.PHONY: aac42 digit

