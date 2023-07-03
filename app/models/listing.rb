# == Schema Information
#
# Table name: listings
#
#  id            :bigint           not null, primary key
#  host_id       :bigint           not null
#  title         :string           not null
#  about         :text
#  address_line  :string
#  address_line2 :string
#  city          :string
#  state         :string
#  postal_code   :string
#  country       :string
#  lat           :decimal(10, 6)
#  lng           :decimal(10, 6)
#  status        :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
#model layer for storing listings
class Listing < ApplicationRecord
  validates :title, presence: true 
  belongs_to :host, class_name: 'User'
  enum status: [:draft, :published, :archived]
end
