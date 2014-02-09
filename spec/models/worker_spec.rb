require 'spec_helper'

describe Worker do
  it { should validate_presence_of(:status)}

  describe "nice_status" do
    let!(:worker) { FactoryGirl.create(:worker, :status => 0) }
    it 'should return worker status' do
          worker.nice_status.should eql('Active')
    end
  end

end