TARGET = program
CXX = clang++
CXXFLAGS = -std=c++17 
SRCDIR = src
SRC = $(SRCDIR)/main.cpp \
      $(SRCDIR)/database/database.cpp \
      $(SRCDIR)/database/threadsafe_db.cpp \
      $(SRCDIR)/network/network_server.cpp \
      $(SRCDIR)/network/client_connection.cpp \
      $(SRCDIR)/network/thread_pool.cpp \
      $(SRCDIR)/utils/logger.cpp \
      $(SRCDIR)/structures/set.cpp \
      $(SRCDIR)/structures/stack.cpp \
      $(SRCDIR)/structures/queue.cpp \
      $(SRCDIR)/structures/hash.cpp \
      $(SRCDIR)/structures/tree.cpp

OBJ = $(SRC:.cpp=.o)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

rebuild: clean $(TARGET)
a
.PHONY: clean rebuild
