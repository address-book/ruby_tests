RSpec.describe Selenium::WebDriver::Driver do
  it "switches between Windows" do

    @driver.get "http://a.testaddressbook.com"

    @driver.execute_script("window.open('http://a.testaddressbook.com/sign-in');")

    original_window = @driver.window_handle
    windows = @driver.window_handles

    expect(@driver.window_handles.size).to eq 2

    new_window = windows.find { |win| win != original_window }

    @driver.switch_to.window(new_window)
    @driver.close

    expect(@driver.window_handles.size).to eq 1

    @driver.switch_to.window(original_window)

  end
end
