require './person'
# the student class
class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unkown', classroom = 5, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
