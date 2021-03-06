class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :name,:presence=>true,:length=>{:maximum=>10}
  email_regex=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,:presence=>true,:format=>{:with=>email_regex},
                   :uniqueness=>{:case_sensitive=>false}
end
