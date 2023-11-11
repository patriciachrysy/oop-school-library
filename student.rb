require './person'
# the student class
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end
end
