class Spree::Block < ActiveRecord::Base
  default_scope -> { order("position ASC") }
  validates_presence_of :code
end
