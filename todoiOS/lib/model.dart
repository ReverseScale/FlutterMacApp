import 'package:flutter/material.dart';

class CategoryM {
  
  final int id;
  final IconData icon;
  final Color color;
  final String title;
  final List<Task> tasks;

  CategoryM(this.id, this.icon, this.color, this.title, this.tasks);
}

class Task {
  final int id;
  final String name;
  final bool done;

  Task(this.id, this.name, this.done);
}