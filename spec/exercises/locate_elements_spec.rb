RSpec.describe 'Element Location Exercise' do
  before { @driver.get "http://a.testaddressbook.com/sign_in" }

  it 'locates email field' do

    id = "session_email"
    name = "session[email]"
    class_name = "form-control"
    tag_name = "input"
    tag_index = 2


    # Obfuscated way of getting the Email Field
    email_field = @driver.find_elements(:xpath, "//*")[30]

    # Assert correct element has been found withe the updated strings
    if email_field != @driver.find_element(:id, id)
      raise "#{id} is not the correct id for the email field"
    elsif email_field != @driver.find_element(:name, name)
      raise "#{name} is not the correct name for the email field"
    elsif email_field != @driver.find_element(:class_name, class_name)
      raise "#{class_name} is not the correct class name for the email field"
    elsif email_field != @driver.find_elements(:tag_name, tag_name)[tag_index]
      raise "#{tag_name} with index #{tag_index} is not the correct combination for the email field"
    end
  end

  it 'locates sign in button' do

    name = "commit"
    class_name = "btn"
    tag_name = "input"
    tag_index = 4


    # Obfuscated way of getting the Email Field
    sign_in_button = @driver.find_elements(:xpath, "//*")[34]

    # Assert correct element has been found withe the updated strings
    if sign_in_button != @driver.find_element(:name, name)
      raise "#{name} is not the correct name for the sign in button"
    elsif sign_in_button != @driver.find_element(:class_name, class_name)
      raise "#{class_name} is not the correct Class Name for the sign in button"
    elsif sign_in_button != @driver.find_elements(:tag_name, tag_name)[tag_index]
      raise "#{tag_name} with index #{tag_index} is not the correct combination for the sign in button"
    end
  end

  it 'locates sign up link' do

    link_text = "Sign up"
    partial_link_text = "up"
    tag_name = "a"
    tag_index = 2


    # Obfuscated way of getting the Email Field
    email_field = @driver.find_elements(:xpath, "//*")[36]

    # Assert correct element has been found withe the updated strings
    if email_field != @driver.find_element(:link_text, link_text)
      raise "#{link_text} is not the correct Link Text for the sign up link"
    elsif email_field != @driver.find_element(:partial_link_text, partial_link_text)
      raise "#{partial_link_text} is not the correct Partial Link Text for the sign up link"
    elsif email_field != @driver.find_elements(:tag_name, tag_name)[tag_index]
      raise "#{tag_name} with index #{tag_index} is not the correct combination for the sign up link"
    end
  end

end