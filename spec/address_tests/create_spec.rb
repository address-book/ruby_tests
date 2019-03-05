RSpec.describe "Address" do
  let(:driver) { @driver }

  it 'creates' do
    address = Address.new

    create_address_page = CreateAddress.visit(@driver)

    create_address_page.create(address)

    expect(DisplayAddress.new(@driver).valid?(address)).to eq true
  end
end
