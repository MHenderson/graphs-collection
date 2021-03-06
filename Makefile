export

pangraph=$(HOME)/workspace/pangraph/src/pangraph

external_folder=./External
test_folder=./tests

classic := src/Classic/Bull\
           src/Classic/Chvatal\
           src/Classic/Desargues\
           src/Classic/Frucht\
           src/Classic/Heawood\
           src/Classic/Pappus\
           src/Classic/Petersen\
           src/Classic/Tutte\

platonic := src/Platonic/Dodecahedral\
            src/Platonic/Icosahedral\
            src/Platonic/Octahedral\
            src/Platonic/Tetrahedral

.PHONY: all check $(platonic) $(classic)

all: $(platonic) $(classic)

check:
	$(MAKE) --directory=$(test_folder) check

clean_test:
	$(MAKE) --directory=$(test_folder) clean

test:
	bats ./src/Classic/Bull/tests/*.bats
	bats ./src/Classic/Chvatal/tests/*.bats
	bats ./src/Classic/Desargues/tests/*.bats
	bats ./src/Classic/Frucht/tests/*.bats
	bats ./src/Classic/Petersen/tests/*.bats

external:
	$(MAKE) --directory=$(external_folder) all

$(platonic) $(classic):
	$(MAKE) --directory=$@ $(TARGET)
