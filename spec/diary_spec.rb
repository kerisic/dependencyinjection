require 'diary'

describe Diary do
  it 'adds a diary entry' do
    entry_double = double(:entry, title: 'HI', body: 'I like cheese')
    entry_class_double = double(:entry_class, new: entry_double)
    diary = Diary.new(entry_class_double)
    expect(diary.add('HI', 'I like cheese')).to eq [entry_double]
  end

  it 'lets you view the index of diary entries' do
    entry_double1 = double(:entry, title: 'HI1', body: 'I like cheese')
    entry_double2 = double(:entry, title: 'HI2', body: 'I like sushi')
    entry_class_double = double(:entry_class)
    allow(entry_class_double).to receive(:new).and_return(entry_double1, entry_double2)
    diary = Diary.new(entry_class_double)
    diary.add('HI1', 'I like cheese')
    diary.add('HI2', 'I like sushi')
    expect(diary.index).to eq("HI1\nHI2")
  end
end
