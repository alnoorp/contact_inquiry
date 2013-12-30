require 'spec_helper'

describe User do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:username).when(*blanks) }
  it { should have_valid(:username).when('moknows') }

  it 'has admin false' do
    user = FactoryGirl.create(:user)
    expect(user.admin).to be_false
  end
end
