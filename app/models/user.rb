class User < ApplicationRecord
    has_many :rides
    has_many :attractions, through: :rides

    validates :password, presence: true

    def mood
        if nausea > happiness
            "sad"
        else
            "happy"
        end
    end
end
