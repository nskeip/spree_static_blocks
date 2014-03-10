class Spree::Block < ActiveRecord::Base
  validates_presence_of :code
end
