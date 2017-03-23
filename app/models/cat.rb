# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer          not null
#

require 'action_view'

class Cat < ActiveRecord::Base
  include ActionView::Helpers::DateHelper

  CAT_COLORS = %w(black white orange brown)

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many(
    :rental_requests,
    class_name: "CatRentalRequest",
    dependent: :destroy
  )

  belongs_to :owner,
    class_name: 'User',
    primary_key: :id,
    foreign_key: :user_id

  has_many :renters,
    through: :rental_requests,
    source: :renter

  validates(
    :birth_date,
    :color,
    :name,
    :sex,
    :user_id,
    presence: true
  )

  validates :color, inclusion: CAT_COLORS
  validates :sex, inclusion: %w(M F)

  def age
    time_ago_in_words(birth_date)
  end

end
