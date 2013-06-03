require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cochrane do
  describe 'the FIT header' do
    subject { Cochrane.new( fit_file(:activity) ).header }

    its(:size) { should == 12 }
    its(:protocol_version) { should == 16 }
    its(:profile_version) { should == 100 }
    its(:data_size) { should == 757 }
    its(:data_type) { should == '.FIT' }
    its(:extra) { should be_nil }
  end
end
