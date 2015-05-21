require 'spec_helper'
describe 'shellsync' do

  context 'with defaults for all parameters' do
    it { should contain_class('shellsync') }
  end
end
