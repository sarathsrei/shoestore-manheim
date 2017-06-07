require 'watir-webdriver'
require 'watir'
require 'cucumber'
require 'page-object'
require 'rspec'

$browser = Watir::Browser.new :chrome
$time = Time.now.strftime("%m%d%Y%H%M")
$current_month = Date.new(now.year, now.month, 1)
unique_email = "user#{Time.now}@example.com"

After do
  $browser.close
end