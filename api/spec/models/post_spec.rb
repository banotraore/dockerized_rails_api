require 'rails_helper'

RSpec.describe Post, type: :model do
  context "associations" do
    it { should belong_to(:user)}
  end

  context "validations" do
    it { should validate_presence_of(:content)}
    it { should validate_length_of(:content).is_at_most(500) }
  end
end
