class Words < ActiveRecord::Base

    public 
    def inc_counter
        if count.nil?
            count = 1
        else 
            count = count+1
        end
    end

    protected
    def self.new_word(w,c)
        w1 = new Words
        w1.word = w
        w1.count = c
        
        w1.save
    end
end
