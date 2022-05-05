## Phase 3 Project: 
Task lister app / todo app

## Database Schema

Users - has_many Tasks
  ID (integer, primary key)
  Name (String)
  Timestamps

Tasks - belongs_to taskcategory and users
  ID (integer, primary key)
  Name (string)
  Description (string)
  Priority (string)
  User ID (integer, foreign key)
  Deadline (datetime) # https://api.rubyonrails.org/classes/DateTime.html
  Timestamps

Categories - has_many Tasks through TaskCategory
  Category ID (integer)
  Category Name (string)  
  Timestamps

TaskCategory - JOIN table for tasks, categories
  ID (integer, primary key)
  Task ID (integer, foreign key)
  Category ID (integer, foreign key)

## MVP

  1. Homepage
  2. Navigation
  3. List Tasks Page
  4. New Task Form Page
  5. Edit Task
  6. Delete Task

## Stretch Goals

  1. Color code tasks based on category (e.g. Work, Personal, Home, etc.) Bootstrap, Tailwind, Material UI
  2. Add a deadline function to allow for alerts (use time to create a countdown)
  3. Add "priority level" that perhaps increases the frequency of alerts as deadlines approach 
  4. Try to integrate this task app with Google/local calendar