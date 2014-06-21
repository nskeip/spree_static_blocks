module Spree
  module BlocksHelper
    def static_block(code, autocreate=true)
      block = if autocreate
        Block.find_or_create_by_code(code)
      else
        Block.find_by_code(code)
      end

      if !block.nil? && !block.text.nil?
        block.text.html_safe
      else
        ""
      end
    end
  end
end
