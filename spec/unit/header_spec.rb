require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cochrane::Header do
  describe '#read' do
    let(:fit) { Cochrane::Header.new }

    context 'when the header is 12 bytes' do
      let(:io) { File.open fit_file(:activity) }

      before { fit.read(io) }

      it 'reads only 12 bytes' do
        io.pos.should == 12
      end

      describe 'storing data' do
        subject { fit }

        its(:size) { should == 12 }
        its(:protocol_version) { should == 16 }
        its(:profile_version) { should == 100 }
        its(:data_size) { should == 757 }
        its(:data_type) { should == '.FIT' }
        its(:extra) { should be_nil }
      end

      after { io.close }
    end

    context 'when the header is 14 bytes' do
      let(:io) { File.open fit_file(:example) }

      before { fit.read(io) }

      it 'reads only 14 bytes' do
        io.pos.should == 14
      end

      describe 'storing data' do
        subject { fit }

        its(:size) { should == 14 }
        its(:protocol_version) { should == 16 }
        its(:profile_version) { should == 135 }
        its(:data_size) { should == 44443 }
        its(:data_type) { should == '.FIT' }
        its(:extra) { should == '' }
      end

      after { io.close }
    end
  end
end
