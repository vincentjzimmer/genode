# identify the qt repository by searching for a file that is unique for qt
QT5_REP_DIR := $(call select_from_repositories,lib/import/import-qt5.inc)
QT5_REP_DIR := $(realpath $(dir $(QT5_REP_DIR))../..)

include $(QT5_REP_DIR)/lib/mk/qt5_version.inc

QT5_PORT_DIR := $(call select_from_ports,qt5)
QT5_CONTRIB_DIR := $(QT5_PORT_DIR)/src/lib/qt5/$(QT5)

QMAKE_PROJECT_PATH = $(QT5_CONTRIB_DIR)/qttools/examples/designer/calculatorform
QMAKE_PROJECT_FILE = $(QMAKE_PROJECT_PATH)/calculatorform.pro

vpath % $(QMAKE_PROJECT_PATH)

include $(QT5_REP_DIR)/src/app/qt5/tmpl/target_defaults.inc

include $(QT5_REP_DIR)/src/app/qt5/tmpl/target_final.inc
