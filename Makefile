.PHONY: hpny
hpny:
	@$(MAKE) -C src ../hpny

.PHONY: clean
clean:
	rm -rf src/Mercury
	rm -f src/*.err src/*.mh src/hpny hpny
