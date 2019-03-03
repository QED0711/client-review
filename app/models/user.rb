class User < ApplicationRecord

    has_many :comments

    has_secure_password

    def say_hello
        puts "Hello World"
    end

end
