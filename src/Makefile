CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
TARGET = trispo
SRC = trispo.cpp
TEST_SCRIPT = ../cicd/tests.sh

.PHONY: all clean install check-deps test

all: $(TARGET)

$(TARGET): $(SRC)
	@if ! command -v $(CXX) >/dev/null 2>&1; then \
	  	echo "Ahtung: $(CXX) not found("; \
	  	echo "Pishi: sudo apt-get install g++"; \
	  	exit 1; \
	fi
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -f $(TARGET) *.o

install: $(TARGET)
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 $(TARGET) $(DESTDIR)/usr/bin/

check-deps:
	@echo "Proverochka"
	@command -v g++ >/dev/null 2>&1 || sudo apt-get install -y g++
	@command -v make >/dev/null 2>&1 || sudo apt-get install -y make

test: $(TARGET)
	@echo "Zapusk testoy..."
	@bash $(TEST_SCRIPT)
