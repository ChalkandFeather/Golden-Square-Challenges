require "phonebook"

RSpec.describe PhoneBook do
  context "with no entries" do 
    it "has an empty list" do #xit causes this operation to be pending and wont run until you are ready(but it allows you to write and call when ready)
    phone_book = PhoneBook.new  
    expect(phone_book.list).to eq []
  end
 end

  context "given an entry with a number only" do
    it "stores the number into list" do #xit is 'exiting prog from running until un x-it'd
    phone_book = PhoneBook.new    
    phone_book.extract_numbers("07886454566")
    expect(phone_book.list). to eq ["07886454566"]
    end
  end

  context "given an entry with a number in it" do
    it "stores the number" do #xit is 'exiting prog from running until un x-it'd
    phone_book = PhoneBook.new    
    phone_book.extract_numbers("I was calling my friend 07886454566 the other day")
    expect(phone_book.list).to eq ["07886454566"] 
    end
  end

  context "given an entry with two numbers in it" do
    it "stores both numbers" do      
    phone_book = PhoneBook.new  
    phone_book.extract_numbers("My faves: 07886454566, 07985736592 ")
    expect(phone_book.list).to eq ["07886454566", "07985736592"] 
    end
end

  context "given an entry without numbers in it" do
    it "stores nothing" do   
    phone_book = PhoneBook.new  
    phone_book.extract_numbers("My faves:")
    expect(phone_book.list).to eq []
    end
  end
  
  context "given two entries entry with numbers" do
    it "stores both seen " do  
    phone_book = PhoneBook.new  
    phone_book.extract_numbers("My friend Sarah is 07886454566")
    phone_book.extract_numbers("My friend Jo is 07985736592")
    expect(phone_book.list).to eq ["07886454566", "07985736592"]
    end
  end

  context "given entry with too few numbers" do
    it "stores nothing" do  
    phone_book = PhoneBook.new  
    phone_book.extract_numbers("My friend Jillian is 0788645666")
    expect(phone_book.list).to eq []
    end
  end

  context "given entry with duplicate number" do
    it "stores unique number only" do  
    phone_book = PhoneBook.new  
    phone_book.extract_numbers("My friend Sarah is 07886454566")
    phone_book.extract_numbers("My pal Sarah is 07886454566")
    expect(phone_book.list).to eq ["07886454566"]
    end
  end
end




