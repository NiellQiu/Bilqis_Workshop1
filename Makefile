# Makefile for Dress Rental Management System

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall -Wextra

# MySQL Connector paths (adjust these based on your installation)
# Windows XAMPP example:
# MYSQL_INCLUDE = C:/xampp/mysql/include
# MYSQL_LIB = C:/xampp/mysql/lib

# Linux example:
# MYSQL_INCLUDE = /usr/include/mysql-cppconn-8
# MYSQL_LIB = /usr/lib/x86_64-linux-gnu

# Source files
SOURCES = main.cpp MenuHandlers.cpp DatabaseManager.cpp CustomerManager.cpp \
          DressManager.cpp RentalManager.cpp PaymentManager.cpp ReportManager.cpp \
          InputValidator.cpp UIColors.cpp AuthManager.cpp

# Object files
OBJECTS = $(SOURCES:.cpp=.o)

# Executable name
TARGET = rental_system

# Default target
all: $(TARGET)

# Link object files to create executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS) -lmysqlcppconn

# Compile source files to object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJECTS) $(TARGET)
	rm -f *.o *.exe

# Install dependencies (Linux)
install-deps:
	sudo apt-get update
	sudo apt-get install -y libmysqlcppconn-dev g++

# Run the application
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean install-deps run

