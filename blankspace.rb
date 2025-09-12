require "date"

class User
  attr_accessor :username
	attr_accessor :email
  attr_accessor :bio
  attr_accessor :birthdate
  
  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365
    
    return age_in_years.to_i
  end
  
  def about_me
    return self.username.downcase + " " + self.age.to_s + ": " + self.bio + ". Reach me at: " + self.email
  end
end

new_user = User.new
new_user.username = "JOE"
new_user.email = "joe@example.com"
new_user.bio = "Ruby enthusiast"
new_user.birthdate = "1987-04-19"

pp new_user.about_me