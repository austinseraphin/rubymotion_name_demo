describe NameController do
tests NameController

it "displays a name" do
controller.name.text="Austin"
controller.display_name(controller.name)
controller.name.text.should.nil?
end
end
