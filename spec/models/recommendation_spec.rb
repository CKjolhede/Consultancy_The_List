require 'rails_helper'

RSpec.describe Recommendation, type: :model do
  describe "relationships" do
    it { should belong_to :user}
    it {should validate_presence_of :title}
    it {should validate_presence_of :media_id}
    it {should validate_presence_of :media_type}

  end
end