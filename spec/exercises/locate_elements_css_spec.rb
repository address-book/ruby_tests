RSpec.describe 'Element Location With CSS Exercise' do
  before { @driver.get "http://a.testaddressbook.com/sign_in" }

  it 'locates email field' do

    id = ""
    name = ""
    class_name = ""
    tag_name = ""
    tag_index = 0


    # Obfuscated way of getting the Email Field
    email_field = @driver.find_elements(:xpath, "//*")[30]

    # Assert correct element has been found withe the updated strings
    if email_field != @driver.find_element(:css, id)
      raise "#{id} is not the correct id for the email field"
    elsif email_field != @driver.find_element(:css, name)
      raise "#{name} is not the correct name for the email field"
    elsif email_field != @driver.find_element(:css, class_name)
      raise "#{class_name} is not the correct class name for the email field"
    elsif email_field != @driver.find_elements(:css, tag_name)[tag_index]
      raise "#{tag_name} with index #{tag_index} is not the correct combination for the sign in button"
    end
  end

  it 'locates sign in button' do

    name = ""
    class_name = ""
    tag_name = ""
    tag_index = 0


    # Obfuscated way of getting the Sign In Button
    sign_in_button = @driver.find_elements(:xpath, "//*")[34]

    # Assert correct element has been found withe the updated strings
    if sign_in_button != @driver.find_element(:css, name)
      raise "#{name} is not the correct name for the sign in button"
    elsif sign_in_button != @driver.find_element(:css, class_name)
      raise "#{class_name} is not the correct Class Name for the sign in button"
    elsif sign_in_button != @driver.find_elements(:css, tag_name)[tag_index]
      raise "#{tag_name} with index #{tag_index} is not the correct combination for the sign in button"
    end
  end

  it 'locates sign up link' do

    data_tag = ""

    # Obfuscated way of getting the Sign Up Link
    sign_up_link = @driver.find_elements(:xpath, "//*")[36]

    # Assert correct element has been found withe the updated strings
    if sign_up_link != @driver.find_element(:css, data_tag)
      raise "#{data_tag} is not the correct Data Tag for the sign up link"
    end
  end
end
