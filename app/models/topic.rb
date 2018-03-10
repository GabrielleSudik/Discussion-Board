class Topic < ApplicationRecord
  #this page started almost empty
  #you're adding the code for one table to talk to another

  has_many :votes, dependent: :destroy

end
