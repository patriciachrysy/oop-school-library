class Student < Person
    attr_reader :classroom

    def initialize(name = "Unkown", age, parent_permission = true, classroom)
        super(name, age, parent_permission)
        @classroom = classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end