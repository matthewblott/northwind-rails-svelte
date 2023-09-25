require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout links' do
    get root_path 
    
    assert_template 'static_pages/home'

    get about_path  

    assert_template 'static_pages/about'
    # check anchor matches root path
    # assert_select 'a[href=#{root_path}]', count: 1 
    # assert_select 'a[href=?]', root_path
    # assert_select 'a[href=?]', about_path 
  end

end
