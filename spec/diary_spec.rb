require 'diary'

describe Diary do
  it 'can add an entry' do
    entry_double = double(:entry, title: 'Hi', body: 'I like cheese')
    entry_class_double = double(:entry_class, new: entry_double)
    diary = Diary.new(entry_class_double)
    expect(diary.add('Hi', 'I like cheese')).to eq [entry_double]
  end

  it 'can show diary entries' do
    entry_double_1 = double(:entry, title: 'title_1', body: 'I like sushi')
    entry_double_2 = double(:entry, title: 'title_2', body: 'I like cheese')
    entry_class_double = double(:entry_class)
    allow(entry_class_double).to receive(:new).and_return(entry_double_1, entry_double_2)

    diary = Diary.new(entry_class_double)
    diary.add('title_1', 'I like sushi')
    diary.add('title_2', 'I like cheese')

    expect(diary.index).to eq "title_1\ntitle_2"
  end
end
