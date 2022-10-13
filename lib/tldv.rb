# frozen_string_literal: true

require_relative "tldv/version"
require "tldv/data"

module TLDv
  class Error < StandardError; end

  module_function

  # checks if a TLD is valid
  # @param tld [String] the TLD to check, e.g. `example`
  # @return [bool] `true` if the TLD is valid, `false` otherwise
  def valid?(tld)
    Data::TLDS.include?(tld.downcase)
  end
end
