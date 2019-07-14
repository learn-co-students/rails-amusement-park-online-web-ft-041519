class User < ActiveRecord::Base 
    has_many :rides
    has_many :attractions, through: :rides
    has_secure_password
    
    # def initialize(value)
    #     #self.admin ||= false
    # end

    def mood
        if self.nausea && self.happiness
            if self.nausea > self.happiness
            "sad"
            else
                "happy"
            end
        end
    end
end