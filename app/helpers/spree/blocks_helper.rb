module Spree
  module BlocksHelper
    def static_block(code)
      block = Block.find_or_create_by_code(code)
      if block.text?
        block.text.html_safe
      else
        ""
      end
    end
  end
end
