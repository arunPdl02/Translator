CXX      := g++
CXXFLAGS := -Wall -Iinclude
TARGET   := translate
BUILDDIR := build
SRCDIR   := src

# All .cpp files (Translator.cpp is in root, the rest in src/)
SOURCES := Translator.cpp \
           $(SRCDIR)/WordPair.cpp \
           $(SRCDIR)/Dictionary.cpp \
           $(SRCDIR)/BST.cpp \
           $(SRCDIR)/BSTNode.cpp \
           $(SRCDIR)/exceptions/ElementAlreadyExistsException.cpp \
           $(SRCDIR)/exceptions/ElementDoesNotExistException.cpp \
           $(SRCDIR)/exceptions/EmptyDataCollectionException.cpp \
           $(SRCDIR)/exceptions/UnableToInsertException.cpp

# Map sources -> build/*.o (keeps subfolders inside build/)
OBJECTS := $(patsubst %.cpp,$(BUILDDIR)/%.o,$(SOURCES))

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJECTS)

# Ensure build/ exists before compiling anything
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

# Generic rule to compile any .cpp into build/.o, preserving folder structure
$(BUILDDIR)/%.o: %.cpp | $(BUILDDIR)
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(TARGET) $(BUILDDIR)