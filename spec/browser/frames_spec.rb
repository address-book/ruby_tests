RSpec.describe Selenium::WebDriver::Driver do
  it "switches between Frames" do

    @driver.get "https://the-internet.herokuapp.com/nested_frames"

    # "BOTTOM"
    @driver.switch_to.frame(1);

    # Move up one context
    @driver.switch_to.parent_frame

    # ""
    @driver.switch_to.frame("frame-top")

    # "LEFT"
    @driver.switch_to.frame("frame-left")

    # Move back to top context
    @driver.switch_to.default_content
  end
end
