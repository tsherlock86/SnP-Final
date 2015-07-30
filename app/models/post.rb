class Post < ActiveRecord::Base

belongs_to :author

validates_presence_of :title

validate :number_of_characters_short

def number_of_characters_short
    number_of_characters_short = 10 - self.title.length
    if self.title.length < 10
    errors[:base] << "Your title is #{number_of_characters_short} characters short."
    end
  end

end
