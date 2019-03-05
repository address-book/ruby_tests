RSpec.describe "Test Journey" do
  it "creates reads updates and deletes address" do
    # Navigate
    @driver.get "http://a.testaddressbook.com"

    # Click Sign In Link
    @driver.find_element(id: "sign-in").click

    # Sign In (see `spec/exercises/element_actions_spec.rb`)
    @driver.find_element(id: "session_email").send_keys "user@example.com"
    @driver.find_element(id: "session_password").send_keys "password"
    @driver.find_element(name: "commit").click

    # Click Addresses Link
    @driver.find_element(css: "a[data-test=addresses]").click

    # Click Create Address Link
    @driver.find_element(css: "a[data-test=create]").click

    # Create Address
    first_name = "Dylan"
    @driver.find_element(id: "address_first_name").send_keys first_name

    last_name = "McKay"
    @driver.find_element(id: "address_last_name").send_keys last_name

    street_address = "123 Main St"
    @driver.find_element(id: "address_street_address").send_keys street_address

    secondary_address = "Apt B"
    @driver.find_element(id: "address_secondary_address").send_keys secondary_address

    city = "Beverly Hills"
    @driver.find_element(id: "address_city").send_keys city

    state_value = "CA"
    state_element = @driver.find_element(id: "address_state")
    select_list = Selenium::WebDriver::Support::Select.new(state_element)
    select_list.select_by(:value, state_value)

    zip_code = "90210"
    @driver.find_element(id: "address_zip_code").send_keys zip_code

    country = "us"
    @driver.find_element(id: "address_country_#{country}").click

    birthday = "10/01/1974"
    @driver.find_element(id: "address_birthday").send_keys birthday

    file = File.expand_path("../../../bin/luke.jpg", __FILE__)
    @driver.find_element(id: "address_picture").send_keys file

    @driver.find_element(id: "address_interest_dance").click

    note = "My Best Friend"
    @driver.find_element(id: "address_note").send_keys note
    @driver.find_element(css: "[data-test=submit]").click

    # Validate Address Information
    expect(@driver.find_element(css: "[data-test=first_name]").text).to eq first_name
    expect(@driver.find_element(css: "[data-test=last_name]").text).to eq last_name
    expect(@driver.find_element(css: "[data-test=street_address]").text).to eq street_address
    expect(@driver.find_element(css: "[data-test=secondary_address]").text).to eq secondary_address
    expect(@driver.find_element(css: "[data-test=city]").text).to eq city
    expect(@driver.find_element(css: "[data-test=state]").text).to eq state_value
    expect(@driver.find_element(css: "[data-test=zip_code]").text).to eq zip_code
    expect(@driver.find_element(css: "[data-test=country]").text).to eq country
    expect(@driver.find_element(css: "[data-test=interest_climb]").text).to eq "No"
    expect(@driver.find_element(css: "[data-test=interest_dance]").text).to eq "Yes"
    expect(@driver.find_element(css: "[data-test=interest_read]").text).to eq "No"
    expect(@driver.find_element(css: "[data-test=note]").text).to eq note

    # Click Edit
    @driver.find_element(css: "[data-test=edit]").click

    # Change Address Information
    new_first_name = "Brandon"
    @driver.find_element(id: "address_first_name").clear
    @driver.find_element(id: "address_first_name").send_keys new_first_name

    new_last_name = "Walsh"
    @driver.find_element(id: "address_last_name").clear
    @driver.find_element(id: "address_last_name").send_keys new_last_name

    @driver.find_element(css: "[data-test=submit]").click

    # Validate Updated Address Information
    expect(@driver.find_element(css: "[data-test=first_name]").text).to eq new_first_name
    expect(@driver.find_element(css: "[data-test=last_name]").text).to eq new_last_name

    id = @driver.current_url[/[^\/]*$/]
    # Click List
    @driver.find_element(css: "[data-test=list]").click

    # Destroy the Address You Created
    @driver.find_element(css: "[data-test=destroy-#{id}]").click
    @driver.switch_to.alert.accept

    expect(@driver.find_element(css: "[data-test=notice]").text).to eq "Address was successfully destroyed."
  end
end
