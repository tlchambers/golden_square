require_relative '../lib/count_words'
# Yesterday I had mentioned that I would explain a couple of the things and reaosning, we didn't get round to it
# so just wanted to explain it here
# 1. The reason I didn't put anything in the describe bit now labeled "#count_words" was because I usually
# put the class name in there,
# 2. In RSpec you have have another context layer inwhich allows you to reduce code duplication when testing classes
# You can have multiple contexts with multiple its.
# I have included some description just below

# RSpec.describe SomeClass do
  # I imagine describe,context and it as layers being Describe (top), Context (Middle) and it (Bottom)
  #Any variable or function you can call if they are in the same layer or in a layer above
  # so for example some1_test can be called anywhere in the describe but some4_text can only be called in the it "#do_x"
#   some1_text = "some1"
#   some2_text = "some2"
#   some3_text = "some3"
#   some_object = SomeClass.new(some1_text)
#   context  "Methods" do
#     task = some1_text + some3_text
#     it "#do_z" do
#       task = some1_text + some3_text
#       result = some_object.do_z
#       expect(result).to eq some1_text + some3_text
#     end
#     it "#do_x" do
#       some4_text = some2_text + some3_text
#       result = some_object.do_x
#       expect(result).to eq some4_text
#     end
#     it "#do_y?" do
#       new_task.mark_done!
#       result = some_object.do_y
#       expect(result).to eq some1_text + some2_text
#     end
#   end
#   context "Error testing" do

#     it "should " do

#     end

#   end
# end



RSpec.describe "#count_words" do
  it 'It counts the number of words of the given string' do
    expect(count_words("The fox jumps etc.")).to eq 4
  end
  it 'It counts the number of words of the given string' do
    expect(count_words("The fox jumps over the light brown fence")).to eq 8
  end
  it 'Fails if no string given' do
    expect{count_words("")}.to raise_error "No string given"
  end
end