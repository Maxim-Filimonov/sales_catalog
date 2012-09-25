require 'spec_helper'
describe ApplicationHelper do
  describe "#markdown" do
    it 'converts just text' do
      text = markdown('just text')
      text.should_not be_nil
    end
    it 'handles nil without exception' do
      text = markdown(nil)
      text.should be_blank
    end
  end
end