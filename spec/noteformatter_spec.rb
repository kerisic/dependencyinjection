require 'noteformatter'

describe Note do
  it 'displays formatted note' do
    formatter = double(:formatter, format: "Title: Hi\nI like cheese")
    note = Note.new('Hi', 'I like cheese', formatter)
    expect(note.display).to eq("Title: Hi\nI like cheese")
  end
end
