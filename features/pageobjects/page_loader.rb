class PageLoader

  def initialize(browser)
    @browser = browser
  end

    @@pages = {
      'Home Page' => 'home_page.rb',
      'Create Account Page' => 'create_account_page.rb',
      'Sign In Page' => 'sign_in_page.rb'
    }
  def load(gherkin_page_name)
    class_file = @@pages[gherkin_page_name] 
    raise "No page data found for #{gherkin_page_name}" if class_file == nil
    require_relative("#{class_file}")
    Kernel.const_get(gherkin_page_name.gsub(" ", "")).new(@browser)
  end
end