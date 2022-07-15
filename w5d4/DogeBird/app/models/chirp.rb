# == Schema Information
#
# Table name: chirps
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  author_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chirp < ApplicationRecord
    validates :body, :author_id, presence: true
    validate :body_too_long
    #Every time we write a belongs_to we need to 
    #write a corresponding has_many in the other table
    # belongs to checks for prescense true
    belongs_to :author,
        primary_key: :id, #points to id of user table
        foreign_key: :author_id, #the foreign key of current table we want to connect
        class_name: :User #we are defining which table to connect the foreign key to here
        # optional: true --this will bypass prescence check

        has_many :likes,
            primary_key: :id,
            foreign_key: :chirp_id,
            class_name: :Like,
            dependent: :destroy

        


    def body_too_long
        if body && body.length > 100
            errors.add(:body, 'too long')
        end
    end
end
