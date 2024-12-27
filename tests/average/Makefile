# Name of component under test
COMPONENT_NAME = average

# Dynamically generate absolute paths
# From https://matheusmbar.com/bugfree-robot/2019/04/05/makefile-first-test.html
MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

$("MAKEFILE_DIR" + ${MAKEFILE_DIR})
$(${PROJECT_DIR})
$(${SRC_DIR})
$(${TEST_DIR})

# Location of CppUTest (if not already set)
CPPUTEST_HOME ?= /opt/cpputest

$(${CPPUTEST_HOME})

# Include and source files for component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

$(${INCLUDE_DIRS})
$(${SRC_DIRS})

# Include location of mock files
# MOCKS_SOURCE_DIRS = 

# Includes CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

$(${INCLUDE_DIRS})

# Directories containing the unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

$(${TEST_SRC_DIRS})

# Run MakefileWorker.mk with the variables set in this Makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk
