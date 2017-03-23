# == Schema Information
#
# Table name: cats
#
#  id                 :integer          not null, primary key
#  birth_date         :date             not null
#  color              :string           not null
#  name               :string           not null
#  sex                :string(1)        not null
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer          not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class CatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
