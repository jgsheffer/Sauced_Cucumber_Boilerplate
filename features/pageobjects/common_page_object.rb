class CommonPageObject
  def initialize(browser)
    @browser = browser
  end
  def get_element(method)
    element = send(method)
    raise  "Element #{method.to_s} returned nil" if element == nil
    return element
  end
end