RSpec.describe "Authentication" do
  let(:driver) { @driver }

  it 'signs up user' do
    sign_in_page = SignUp.visit(@driver)

    sign_in_page.sign_up

    expect(sign_up_page.success?).to eq true
  end
end
