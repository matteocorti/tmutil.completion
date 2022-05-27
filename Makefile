COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)

install:
ifdef COMPLETIONS_DIR
	cp tmutil.completion $(COMPLETIONS_DIR)/tmutil
else
	echo "Cannot determine the installation directory for bash completion scripts"
endif
