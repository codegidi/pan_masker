require 'test/unit'
require 'pan_masker'

class PanMaskerTest < Test::Unit::TestCase
  def test_no_pan
    assert_equal "the is no pan in this string", Pan_masker.mask("the is no pan in this string")
  end

  def test_verve_pans
    assert_equal "verve 19 111111*********1111", Pan_masker.mask("verve 19 1111111111111111111")
  end

  def test_no_pan_master
    assert_equal "the is no pan in this string", Pan_masker.mask("the is no pan in this string",'mastercard')
  end

  def test_default_pans
    assert_equal "verve 19 111111*********1111", Pan_masker.mask("verve 19 1111111111111111111")
  end

  def test_default_pans_two
    assert_equal "mastercard and visa 16 111111******1111", Pan_masker.mask("mastercard and visa 16 1111111111111111")
  end

  def test_visa_pans
    assert_equal "visa 16 111111******1111", Pan_masker.mask("visa 16 1111111111111111",'visa')
  end

  def test_verve_pans
    assert_equal "verve 19 111111*********1111", Pan_masker.mask("verve 19 1111111111111111111",'verve')
  end

  def test_mastercard_pan
    assert_equal "master 16 111111******1111", Pan_masker.mask("master 16 1111111111111111",'mastercard')
  end
end
