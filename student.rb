require './person'

# the student class
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name: 'Unkown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
