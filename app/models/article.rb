class Article < ActiveRecord::Base
    
    belongs_to :user
    has_many :comments
    
    validates :title, :body, presence: true
    validates :title, uniqueness: { message: "This article title has already been used. Please create an original article title."}
    validates :body, length: { minimum: 15 }
  
end
