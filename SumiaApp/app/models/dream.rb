class Dream < ActiveRecord::Base
    has_many :dreams
    has_many :interpretations

end
