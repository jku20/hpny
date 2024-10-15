.PHONY: hpny
hpny:
	@$(MAKE) -C src ../hpny

.PHONY: test
test:
	@$(MAKE) -C test test

.PHONY: gen
gen:
	@$(MAKE) -C test gen

.PHONY: clean
clean:
	rm -f hpny
	@$(MAKE) -C src clean
	@$(MAKE) -C test clean
