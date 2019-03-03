class Project < ApplicationRecord

    belongs_to :user
    has_many :comments

    def create_comment(text)
        @user_id = self.user_id
        self.comments.create({user_id: @user_id, text: text})
    end


end
