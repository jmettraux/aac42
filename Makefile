
RUBY=ruby27
REMOTEDIR=terebi:Dropbox/xfer

all: rework xfer
rework:
	$(RUBY) mak/rework.rb src/aac42.txt > tmp/aac42.txt
xfer:
	scp tmp/aac42.txt $(REMOTEDIR)/

