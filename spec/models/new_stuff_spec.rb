require 'rails_helper'

RSpec.describe NewStuff, type: :model do
  
  subject {
    described_class.new(title: "abc",
                        news: "some sort of news",
                        date: Date.today)
  }
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid without a title" do
    subject.title = ""
    expect(subject).to_not be_valid
  end
  
  it "is not valid if title is too long" do
    subject.title = "a" * 16
    expect(subject).to_not be_valid
  end
  
  it "is not valid without news" do
    subject.news = ""
    expect(subject).to_not be_valid
  end
  
  it "is not valid if news length is > 400" do
    subject.news = "a" * 401
    expect(subject).to_not be_valid
  end
  
  it "is not valid without date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid if date is not in date format" do
    subject.date = "abc"
    expect(subject).to_not be_valid
  end
end
