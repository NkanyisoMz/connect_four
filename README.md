# Connect Four (TDD Style) - The Odin Project

## Overview

This project is part of **The Odin Project** curriculum and aims to teach the principles of **Test-Driven Development (TDD)** using Ruby and RSpec. The assignment is to build the classic game **Connect Four**, where two players take turns dropping pieces into a grid. The objective of the game is to connect four of your pieces consecutively in a row, column, or diagonal.

The focus of this project is **not just building the game**, but doing so in a **TDD style**. This involves:
1. Writing tests before writing the code.
2. Writing only enough code to pass the test.
3. Refactoring the code when necessary to improve clarity and efficiency.

## Project Objectives

The main goal is to implement the Connect Four game with a focus on:
- Practicing **TDD** using **RSpec**.
- Writing **clean, well-structured code**.
- Refactoring when needed to improve the overall design.
  
This is a key skill for professional software development, where writing tests to guide your development is considered a best practice.

## Game Rules

**Connect Four** is a two-player game in which each player takes turns dropping pieces into a vertical grid. The pieces fall straight down, occupying the lowest available space in the column. The game is won by the first player to get four of their pieces in a row, either:
- Horizontally
- Vertically
- Diagonally

The game is simple yet strategic, and requires careful planning to both build a winning combination and block the opponent from winning.

## Features

- A 6x7 grid where players take turns dropping pieces.
- Detection of a winner when a player gets 4 consecutive pieces in any direction (row, column, or diagonal).
- Ability to handle ties when the grid is completely filled without any player winning.

## Project Requirements

- **Ruby** for the main game logic.
- **RSpec** for testing.
  
### Instructions for Playing the Game

1. Clone the repository to your local machine.
2. Ensure you have Ruby installed on your system.
3. Run the tests using RSpec:
   ```bash
   rspec spec/
