require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'

World(PageObject::PageFactory)

Capybara.register_driver :selenium do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 120
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => 
                                                   {"args" => [ "start-maximized",
                                                                  "--no-sandbox",
                                                   "--disable-web-security",
                                                   "--no-first-run",
                                                   "--no-check-default-driver",
                                                   "--allow-running-insecure-content"  ]})
      Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps , :http_client => client })                
end


#  Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, :browser => :chrome)
# #Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps, :http_client => client}) 
#  end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 100

#Capybara.page.driver.browser.manage.window.maximize


