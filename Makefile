
RUBY=ruby27
REMOTEDIR=terebi:Dropbox/xfer

toxfer:
	$(RUBY) mak/rework.rb src/aac42.txt > tmp/aac42.txt
	scp tmp/aac42.txt $(REMOTEDIR)/

