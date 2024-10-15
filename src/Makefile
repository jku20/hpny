MMC = mmc
PARALLEL = -j $(shell nproc 2>/dev/null || echo 1)

files = $(wildcard **.m)

../hpny: hpny
	@ln -L -f hpny ../hpny

hpny: $(files) Mercury.options
	@$(MMC) --make $(PARALLEL) $@

tags: $(files)
	@mtags $(files)

.PHONY: clean
clean:
	rm -rf Mercury
	rm -f *.err *.mh hpny
