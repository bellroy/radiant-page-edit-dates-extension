require File.dirname(__FILE__) + '/../test_helper'

class PageEditDatesExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(RAILS_ROOT), 'vendor', 'extensions', 'page_edit_dates'), PageEditDatesExtension.root
    assert_equal 'Page Edit Dates', PageEditDatesExtension.extension_name
  end
  
end
