class Student
  include Mongoid::Document
  field :name, type: String
  field :surname, type: String
  field :number, type: Integer
  field :std_class, type: String
end
