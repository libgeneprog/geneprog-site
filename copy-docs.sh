C_ROOT=/Users/shalmezad/Programming/Personal/c/libgeneprog
CPP_ROOT=/Users/shalmezad/Programming/Personal/cpp/geneprog-cpp
SITE_ROOT=`pwd`

# Go into the roots and generate the docs:
echo "Building C docs at $C_ROOT"
cd $C_ROOT
doxygen Doxyfile
echo "Building C++ docs at $CPP_ROOT"
cd $CPP_ROOT
doxygen Doxyfile

# Copy the folders:
C_DOCS="$C_ROOT/docs/html"
CPP_DOCS="$CPP_ROOT/docs/html"
DOCS_FOLDER="$SITE_ROOT/site/docs"
C_DOCS_DEST="$DOCS_FOLDER/c"
CPP_DOCS_DEST="$DOCS_FOLDER/cpp"

echo "Copying $C_DOCS to $C_DOCS_DEST"
cp -r $C_DOCS $C_DOCS_DEST
echo "Copying $CPP_DOCS to $CPP_DOCS_DEST"
cp -r $CPP_DOCS $CPP_DOCS_DEST
