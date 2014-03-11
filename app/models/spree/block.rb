class Spree::Block < ActiveRecord::Base
  validates :code, presence: true, uniqueness: true
end
