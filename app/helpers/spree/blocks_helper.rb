module Spree
  module BlocksHelper
    def static_block(code, autocreate=true)
      block = if autocreate
        Block.find_or_create_by_code(code)
      else
        Block.find_by_code(code)
      end

      if block.nil? || !block.respond_to?(:text)
        ""
      else
        block.text.html_safe
      end
    end
  end
end
