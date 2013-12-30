require 'spec_helper'

describe Contact do
  let(:blanks) { ['', nil] }
  let(:invalid_emails) { ['user@mycom', 'usermy.com', 'user', '.com', 'my.com', '', nil] }

  it { should have_valid(:first_name).when('Master') }
  it { should_not have_valid(:first_name).when(*blanks) }
  it { should have_valid(:last_name).when('Kevin') }
  it { should_not have_valid(:last_name).when(*blanks) }
  it { should have_valid(:email).when('master.kevin@just-trolling.com') }
  it { should_not have_valid(:email).when(*invalid_emails) }
  it { should have_valid(:subject).when('Troll 4 lyfe') }
  it { should_not have_valid(:subject).when(*blanks) }
  it { should have_valid(:description).when('Trolling 24/7. 3=====D') }
  it { should_not have_valid(:description).when(*blanks) }
end
