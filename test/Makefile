MMC = mmc
PARALLEL = -j $(shell nproc 2>/dev/null || echo 1)
DIFF = diff -u

files = $(wildcard **.m ../src/**.m)

TESTS = test_hello_world

.PHONY: test
test: $(addsuffix .runtest,$(TESTS))

.PHONY: gen
gen: $(addsuffix .gen,$(TESTS))

$(TESTS): $(files) Mercury.modules
	$(MMC) --make $(PARALLEL) $@

Mercury.modules: $(files)
	@$(MMC) -f $(files)

.PHONY: %.runtest
# Subcommand for the runtest script, "test" runs tests.
%.runtest: %
	./runtest.sh test $(<)

.PHONY: %.gen
# Subcommand for the runtest script, "gen" creates the .exp files.
%.gen: %
	./runtest.sh gen $(<)

.PHONY: clean
clean:
	rm -rf Mercury
	rm -f *.err *.mh
	rm -f $(TESTS)

