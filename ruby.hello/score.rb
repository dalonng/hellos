
class Score
  def initialize (id=0, subject, score, student_name, explain)
    @id = id
    @subject = subject
    @score = score
    @student_name = student_name
    @explain = explain
  end
  attr_accessor :id, :subject, :score, :student_name, :explain
e
