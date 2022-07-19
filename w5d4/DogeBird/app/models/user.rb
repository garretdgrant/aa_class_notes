# == Schema Information
#
# Table name: users
#
#  id            :bigint           not null, primary key
#  username      :string           not null
#  email         :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  age           :integer          not null
#  favorite_coin :string           not null
#
#We always want our model to be singular, table will be plural
class User < ApplicationRecord
    validates :username, :email, :age, :favorite_coin, presence: true
    validates :username, :email, uniqueness: true

    #This is the association between author_id and chirp
    has_many :chirps,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Chirp,
        dependent: :destroy

        has_many :likes,
            primary_key: :id,
            foreign_key: :liker_id,
            class_name: :Like,
            dependent: :destroy

        has_many :liked_chirps,
            through: :likes,#relies on prev associations
            source: :chirp

        has_many :chirp_likes,
            through: :chirps,
            source: :likes

        has_many :chirp_likers,
            through: :chirp_likes,
            source: :liker

        users = User.where("age >= ?", 10)

        end
