class Candidate < ApplicationRecord
    validates_uniqueness_of :email
end
