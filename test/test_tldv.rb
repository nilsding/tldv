# frozen_string_literal: true

require "test_helper"

class TestTLDv < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TLDv::VERSION
  end

  def test_valid_tlds
    %w[
      at
      AT
      com
      uk
      horse
    ].each do |tld|
      assert ::TLDv.valid?(tld)
    end
  end

  def test_invalid_tlds
    %w[
      carrd
      con
      coom
      cmo
      mail

      ATX
      CON
    ].each do |tld|
      refute ::TLDv.valid?(tld)
    end
  end
end
