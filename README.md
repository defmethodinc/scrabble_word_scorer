# Scrabble

## Introduction

Scrabble is a word game in which two to four players score points by placing tiles bearing a single letter onto a board divided into a 15×15 grid of squares. The tiles must form words which, in crossword fashion, read left to right in rows or downwards in columns, and be defined in a standard dictionary or lexicon.

The name is a trademark of Hasbro, Inc. in the United States and Canada; outside these two countries it is a trademark of Mattel. The game is sold in 121 countries and is available in 29 languages; approximately 150 million sets have been sold worldwide.

## Requirements

* Define architecture and high-level design to implement the Scrabble board game
* Define components of the game and discuss possible software implementations
* Define modules and/or classes for the components
* Define methods to allow interaction between classes and/or components
* All classes must include unit tests

## Whiteboard Session

### Object-Oriented Programming Concepts

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects", which may contain data, in the form of fields, often known as attributes; and code, in the form of procedures, often known as methods. A feature of objects is that an object's procedures can access and often modify its associated data fields. There is significant diversity of OOP languages, but the most popular ones are class-based, meaning that objects are instances of classes, which typically also determine their type.

[Wikipedia OOP Concepts](https://en.wikipedia.org/wiki/Object-oriented_programming)

[Ruby Object-Oriented Programming](https://medium.com/the-renaissance-developer/ruby-101-object-oriented-programming-part-1-af734f87f481)

### Game Components

#### Scrabble

#### Board

tile_place, tile_places matrix  
valid_play, calculate_word_score(word)

#### Players

name, tiles, plays  
initialize, add_play(word), word_score(word), total_score

### Game

words, players  
initialize, play (start_game, setup_players, show_winner)

#### TileBag

tiles  
initialize, draw_tiles(num_tiles), remaining_tiles

#### Dictionary

validate_word(word)

#### WordScorer

word, score, letter_scores  
initialize, calculate_word_score

## Pair-Programming Session

This test-driven pair-programming exercise will focus on the WordScorer class. This class provides the ability to store a word and its score. It uses an internal letter scores look-up table to calculate total word score.

One approach to pair-programming is developers take turns in writing tests/code using the ping-pong method. In general, they try to take careful steps by writing small units of tests/code at a time.

### Ruby

Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.

As most programming languages, Ruby leverages a wide set of third-party libraries. Nearly all of these libraries are released in the form of a gem, a packaged library or application that can be installed with a tool called RubyGems.

[Ruby](https://www.ruby-lang.org/en/)

[Ruby Gems](https://rubygems.org)

[Bundler](https://bundler.io)

### Version Control System

Version control (aka revision control or source control) is the management of changes to documents, computer programs, large web sites, and other collections of information.

[Wikipedia Version Control](https://en.wikipedia.org/wiki/Version_control)

Git is a version control system for tracking changes in computer files and coordinating work on those files among multiple people. It is primarily used for source code management in software development, but it can be used to keep track of changes in any set of files. As a distributed revision control system it is aimed at speed, data integrity, and support for distributed, non-linear workflows.

[Git Version Control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)

[GitHub](https://github.com)

[GitHub Hello World Tutorial](https://guides.github.com/activities/hello-world/)

### Scrabble Repository

Create and initialize new project repository. Example: scrabble

[Git Basics: Git Repository](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)

### Commits

1. Initialize New Project/Repository
  * Create local and remote repository
  * Add README markdown file
  * Commit changes
  * Push to remote repository
2. Add Unit Test Framework
  * Add Gemfile ('test-unit' gem)
  * Bundle install
  * Add `TestWordScorer` class
  * Add test with `assert_equal(true,true)`
  * Note: 'Write the code you wished you had available'
3. WordScorer Initialization
  * Add test to verify WordScorer class
  * Add `WordScorer` class
  * Add empty `initialize` method
  * GitHub: View code commits
4. WordScorer Attributes
  * Add test to verify WordScorer attributes
  * Add attributes to initialize method
  * Add methods to get/retrieve word and score
5. WordScorer Score Calculation
  * Add test to verify word score (RUBY: 9, JAVASCRIPT: 24, PYTHON: 14)
  * Add method to calculate word score (hard-coded values)
  * IRB: String.split and data structure for dictionary of key/value pairs.
  * Update method to calculate word score (increment score using letter scores)
6. Refactor
  * Add test `setup` method
  * Add attribute reader for word
  * Add attribute accessor for score
  * Use `+=` operator to increment score
  * Add private methods to help calculate word score

