# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PageEditDatesExtension < Radiant::Extension
  version "1.0"
  description "Permits to edit the published_at date for a page"
  url "http://mat.cc/dev/radiant/page_edit_extension"

  # define_routes do |map|
  #   map.connect 'admin/page_edit_dates/:action', :controller => 'admin/page_edit_dates'
  # end

  def activate
    admin.page_edit_parts.add('Dates', 'edit_dates', :within => 'Metadata')
  end

  def deactivate
    admin.page_edit_parts.remove('Dates', :within => 'Metadata')
  end

end
