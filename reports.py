import sqlite3

class Student():

  def __init__(self, first, last, handle, cohort):
    self.first_name = first
    self.last_name = last
    self.slack_handle = handle
    self.cohort = cohort

  def __repr__(self):
    return f'{self.first_name} {self.last_name} is in {self.cohort}'

class StudentExerciseReports():

  def __init__(self):
    self.db_path = "/Users/stephencastaneda/workspace/python/exercises/studentexercises.db"

  def all_students(self):

      with sqlite3.connect(self.db_path) as conn:
        conn.row_factory = self.create_student
        db_cursor = conn.cursor()

        db_cursor.execute("""
        select s.student_id,
          s.first_name,
          s.last_name,
          s.slack_handle,
          s.cohort_id,
          c.name
        from Students s
        join Cohorts c on s.cohort_id = c.cohort_id
        order by s.cohort_id
        """)

        all_students = db_cursor.fetchall()

        for student in all_students:
          print(student)

  def create_student(self, cursor, row):
      return Student(row[1], row[2], row[3], row[5])

reports = StudentExerciseReports()
reports.all_students()