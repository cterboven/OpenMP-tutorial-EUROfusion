ALL_RECURSIVE=all-recursive clean-recursive 

DIRS=$(shell ls -d */ | sed '/_/d' 2>/dev/null | sed '/bin/d' 2>/dev/null)

all:   all-recursive
clean: clean-recursive

$(ALL_RECURSIVE):
	@failcom='exit 1';\
   target=`echo $@ | sed s/-recursive//`; \
   for subdir in $(DIRS); do \
      (cd $$subdir && $(MAKE) $$target) || eval $$failcom; \
   done;

