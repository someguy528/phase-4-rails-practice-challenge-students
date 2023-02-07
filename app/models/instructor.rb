class Instructor < ApplicationRecord
    has_many :students
    validates :name, presence: true, uniqueness:true, length: {in: 4..40}
    # format: {with: /\A[a-zA-Z]+\z/},

end
