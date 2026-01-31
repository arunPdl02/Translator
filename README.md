```md
# Translator Application (C++)

## Overview
This project is a **C++ command-line Translator Application** that stores and retrieves word translations using a **Binary Search Tree (BST)**. The focus is on **data structures, exception-safe design, and modular C++ project organization**.

The application supports:
- Loading word translations from a file
- Searching for translations by key
- Displaying all stored translations in sorted order

---

## Key Concepts Demonstrated
- Binary Search Tree (BST) implementation  
- Modular C++ design (separate headers and source files)  
- Custom exception handling  
- Makefile-based build system  
- Manual memory management and defensive programming  

---

## Project Structure
```

.
├── Translator.cpp
├── Makefile
├── build/                  # Auto-generated object files
├── include/
│   ├── BST.h
│   ├── BSTNode.h
│   ├── Dictionary.h
│   ├── WordPair.h
│   └── exceptions/
│       ├── ElementAlreadyExistsException.h
│       ├── ElementDoesNotExistException.h
│       ├── EmptyDataCollectionException.h
│       ├── UnableToInsertException.h
├── src/
│   ├── BST.cpp
│   ├── BSTNode.cpp
│   ├── Dictionary.cpp
│   ├── WordPair.cpp
│   └── exceptions/
│       ├── ElementAlreadyExistsException.cpp
│       ├── ElementDoesNotExistException.cpp
│       ├── EmptyDataCollectionException.cpp
│       ├── UnableToInsertException.cpp
└── data/
└── myDataFile.txt

```

---

## How It Works
1. The program reads a data file containing word pairs in the format:
```

word:translation

````
2. Each word pair is inserted into a BST, preventing duplicates.
3. Users can:
- Enter a word to retrieve its translation
- Type `display` to print all translations in sorted order

---

## Build Instructions
Compile the project using the Makefile:

```bash
make
````

Clean build artifacts:

```bash
make clean
```

---

## Running the Application

Run the program with a data file:

```bash
./translate data/myDataFile.txt
```

Example input:

```text
house
tree
display
```

Example output:

```text
house:casa
***Not Found!***
apple:manzana
dog:perro
house:casa
pizza:pizza
```

---

## Error Handling

The application uses custom exceptions to handle:

* Duplicate entries
* Missing translations
* Empty dictionary operations
* Memory allocation failures

This ensures predictable and robust behavior.

---

## Notes

This project is intentionally backend-focused and emphasizes **correctness, structure, and maintainability** over UI or external libraries.

```

If you want a **shorter README for GitHub recruiters** (half the length), say the word and I’ll trim it ruthlessly.
```
