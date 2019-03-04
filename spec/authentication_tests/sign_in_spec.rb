RSpec.describe "Authentication" do
  let(:driver) { @driver }

  before { @driver.manage.timeouts.implicit_wait = 0 }

  it 'logs in user' do
    user = User.valid

    sign_in_page = SignIn.visit(@driver)

    sign_in_page.sign_in(user)

    expect(sign_in_page.success?).to eq true
  end
end
