.PHONY: clean All

All:
	@echo ----------Building project:[ SynFTP - Release ]----------
	@"$(MAKE)" -f "SynFTP.mk"
clean:
	@echo ----------Cleaning project:[ SynFTP - Release ]----------
	@"$(MAKE)" -f "SynFTP.mk" clean
