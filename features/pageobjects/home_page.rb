require_relative "./common_page_object.rb"

class HomePage < CommonPageObject

  def sign_in_link()
    primary = @browser.link(:id => "nav-link-accountList")
    if (primary.exists?)
      primary
    else
      @browser.link(:id => "nav-link-yourAccount")
    end
  end

  def greeting()
    @browser.element(:id => "hud-customer-name")
  end

  def navigate_to()
    @browser.goto($HOME_URL);
  end
end