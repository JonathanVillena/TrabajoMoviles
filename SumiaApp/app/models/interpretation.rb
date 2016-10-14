class Interpretation < ActiveRecord::Base
    has_one :review
    belongs_to :dream
    belongs_to :user
end
