require 'spec_helper'

describe Micropost do
  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(content: "Loren ipsum") }

  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }

  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end

  describe "whith blank content" do
    before { @micropost.content = " " }
    it { should_not be_valid }
  end

  describe "whith content length is too long" do
    before { @micropost.content = "a" * 141 }
    it { should_not be_valid }
  end
end
