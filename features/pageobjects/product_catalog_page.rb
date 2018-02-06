require_relative "./common_page_object.rb"

class ProductCatalogPage < CommonPageObject

  def new_product_button()
    $driver.element(:id => "_58_login")
  end

  def add_product_button()
    $driver.element(:id => "_58_login")
  end

  def navigate_to()
    landing_page = $page_loader.load("Landing Page")
    landing_page.navigate_to
    landing_page.product_catalog.click
  end
end