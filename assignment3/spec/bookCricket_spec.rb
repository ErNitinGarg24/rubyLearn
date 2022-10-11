require_relative '../bookCricket'

describe BookCricket do
    describe "columns" do
        it "should have a column called type_of_match" do
            expect(BookCricket.new({}).respond_to?(:type_of_match)).to be true
        end
    end
end