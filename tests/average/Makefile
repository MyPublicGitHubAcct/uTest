# Name of component under test
COMPONENT_NAME = average

# Dynamically generate absolute paths
# From https://matheusmbar.com/bugfree-robot/2019/04/05/makefile-first-test.html
MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

# Include and source files for component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

# Include location of mock files
MOCKS_SOURCE_DIRS = 

# Location of CppUTest (if not already set)
CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

$("")
$("Values")
$(info ${COMPONENT_NAME})
$(info ${TEST_DIR})
$(info ${CPPUTEST_HOME})
$("")
$("----------")
$("")

# Includes CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

# ifeq ($(OS),Windows_NT)
#     CCFLAGS += -D WIN32
#     ifeq ($(PROCESSOR_ARCHITEW6432),AMD64)
#         CCFLAGS += -D AMD64
#     else
#         ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
#             CCFLAGS += -D AMD64
#         endif
#         ifeq ($(PROCESSOR_ARCHITECTURE),x86)
#             CCFLAGS += -D IA32
#         endif
#     endif
# else
#     UNAME_S := $(shell uname -s)
#     ifeq ($(UNAME_S),Linux)
#     	CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest
#     	INCLUDE_DIRS += $(CPPUTEST_HOME)/include
#     	include $(CPPUTEST_HOME)/build/MakefileWorker.mk
#     endif
#     ifeq ($(UNAME_S),Darwin)
#     	CPPUTEST_HOME ?= $(PROJECT_DIR)/opt/homebrew/Cellar/cpputest
#     	INCLUDE_DIRS += $(CPPUTEST_HOME)/4.0/lib
#     	# need to put whatever is in MakefileWorker.mk here...
#     endif
#     UNAME_P := $(shell uname -p)
#     ifeq ($(UNAME_P),x86_64)
#         CCFLAGS += -D AMD64
#     endif
#     ifneq ($(filter %86,$(UNAME_P)),)
#         CCFLAGS += -D IA32
#     endif
#     ifneq ($(filter arm%,$(UNAME_P)),)
#         CCFLAGS += -D ARM
#     endif
# endif

# Directories containing the unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

# Run MakefileWorker.mk with the variables set in this Makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk
