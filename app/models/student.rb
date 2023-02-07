class Student < ApplicationRecord
    belongs_to :instructor
    validates :name, :major, :age, presence: true
    validates :name, uniqueness: true, length: {in: 3..40}
    validates :age, numericality: {greater_than: 17}
    # validates :name, :major, format: {with: /\A[a-zA-Z]+\z/}
    validates :major, length: {in: 4..30}

end
