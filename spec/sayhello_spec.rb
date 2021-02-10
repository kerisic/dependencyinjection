require 'sayhello'

describe SayHello do
  let(:message_double) { double(:message, send: 'Imagine an email') }
  let(:email_client) { double(:email_client, message: message_double) }
  let(:emailclient_class) { double(:EmailClient, new: email_client) }

  it 'sends a hello message' do
    say_hello = SayHello.new(emailclient_class)
    expect(say_hello.run).to eq 'Imagine an email'
  end
end
