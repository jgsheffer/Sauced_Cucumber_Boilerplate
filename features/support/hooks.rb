def maximize_browser
  @driver.window.maximize
end
Before do | scenario |
  capabilities_config = {
      :version => "#{ENV['version']}",
      :platform => "#{ENV['platform']}",
      :name => "#{scenario.feature.name} - #{scenario.name}"
  }
  build_name = ENV['JENKINS_BUILD_NUMBER'] || ENV['SAUCE_BAMBOO_BUILDNUMBER'] || ENV['SAUCE_TC_BUILDNUMBER'] || ENV['SAUCE_BUILD_NAME']
  capabilities_config[:build] = build_name unless build_name.nil?

  capabilities = Selenium::WebDriver::Remote::Capabilities.send(ENV['browserName'].to_sym, capabilities_config)

  url = "https://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:443/wd/hub".strip

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 180

  @browser = Watir::Browser.new(:remote, :url => url, :desired_capabilities => capabilities, :http_client => client)
  $page_loader = PageLoader.new(@browser)
end

# "after all"
After do | scenario |
  sessionid = @browser.driver.session_id
  jobname = "#{scenario.feature.name} - #{scenario.name}"


  puts "SauceOnDemandSessionID=#{sessionid} job-name=#{jobname}"
  if scenario.failed?
    "Scenario failed::: #{scenario.exception.message}"
  end
  @browser.quit

  if scenario.passed?
    SauceWhisk::Jobs.pass_job sessionid
  else
    SauceWhisk::Jobs.fail_job sessionid
  end
end