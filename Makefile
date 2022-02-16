COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)

install:
ifdef COMPLETIONS_DIR
	cp tmutil.completion $(COMPLETIONS_DIR)/tmutil
else
	echo "Cannot determine the installtion directory for bash completion scripts"
endif
