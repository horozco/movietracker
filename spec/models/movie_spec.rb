require 'spec_helper'

describe Movie, "Relations" do
  it { should have_many(:checkins) }
  it { should have_many(:users).through(:checkins) }
end

describe Movie, "Validations" do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:release_date) }
end
