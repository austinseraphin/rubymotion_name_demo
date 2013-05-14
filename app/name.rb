class NameController < UIViewController

attr_reader :name

def viewDidLoad
super
label=UILabel.alloc.initWithFrame(CGRect.make(x: 0, y: 0,
width: view.frame.width,
height: view.frame.height/2))
label.text="What is your name?"
view.addSubview(label)
@name=UITextField.alloc.initWithFrame(label.frame.below)
@name.placeholder="Johnny Appleseed"
@name.borderStyle=UITextBorderStyleRoundedRect
@name.enablesReturnKeyAutomatically=true
@name.returnKeyType=UIReturnKeyDone
@name.delegate=self
view.addSubview(@name)
end

def display_name(textfield)
App.alert("Hello, #{textfield.text}!")
textfield.text=nil
end

def textFieldShouldReturn(textfield)
display_name(textfield)
textfield.resignFirstResponder
false
end

end
