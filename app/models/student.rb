class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, length: {minimum: 2, maximum: 30}
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    validates :email, presence: true,
                length: {maximum: 50},
                uniqueness: { case_sensitive: false },
                format: { with: VALID_EMAIL}
                

    #the account relation of has_one association
    has_one :account

    # callbacks for the student : 
    before_create :greetings
    after_create :display_age
    before_save :name_display

    def full_name
        "#{first_name}_#{last_name}"
    end
    def age
        if date_of_birth.present?
            Date.today.year-date_of_birth.year
        else
            puts "nil"
        end
    end

    private 

    def greetings
        puts "the greate student has been created"
    end
    def display_age
        if date_of_birth.present?
            age = Date.today - date_of_birth
            puts "==========the age of the student is #{age}================"
        else
            puts "the age is not present"
        end
    end

    def name_display
        self.first_name = first_name.upcase if first_name.present?
    end
  
 end