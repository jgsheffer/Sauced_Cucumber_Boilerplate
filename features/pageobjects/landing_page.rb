require_relative "./common_page_object.rb"

class LandingPage < CommonPageObject

  def product_catalog()
    @browser.element(:id => "_58_login")
  end

  def navigate_to()
    home_page = $page_loader.load("Home Page")
    home_page.navigate_to
    home_page.login
  end
end