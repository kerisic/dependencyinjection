require 'optional'

describe Greeter do
  let(:kerneldouble) { double(:kerneldouble) }
  let(:kernelclass) { double(:kernelclass, new: kerneldouble) }
  it 'greets' do
    greeter = Greeter.new(kernelclass)
    allow(kernelclass).to receive(:gets).and_return('Chris')
    expect { greeter.greet }.to output("What is your name?\nHello, Chris\n").to_stdout
  end
end
