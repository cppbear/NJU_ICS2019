User=$(shell whoami)
$(warning $(User))
ifeq ($(User), root)
$(error "User Check FAIL: DO NOT run as root")
endif
# call validate.py, get return value
info = $(shell scripts/validate $(User) $(STU_ID))
#check pass
ifeq ($(info), pass)
$(warning "Make Validation Pass")
endif
#check pass, but haven't coded for a long time.
ifeq ($(info), pass_timeout)
$(warning "Make Validation Pass")
$(warning "It seems that you haven't coded for a long time.")
endif
#check fail
ifeq ($(info), fail)
$(error "Make Validation FAIL")
endif
