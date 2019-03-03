class User < ApplicationRecord

    has_many :projects
    has_many :comments, through: :projects

    has_secure_password

    def say_hello
        puts "Hello World"
    end

end
