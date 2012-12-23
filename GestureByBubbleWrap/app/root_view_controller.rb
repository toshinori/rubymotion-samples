class RootViewController < UIViewController
  attr_accessor :main_text
  attr_accessor :left_swipe, :right_swipe
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor

    @main_text = UITextView.new.tap do |v|
      v.backgroundColor = UIColor.whiteColor
      v.frame = [[0, 0], [self.view.frame.size.width, self.view.frame.size.height]]
      self.view.addSubview(v)
    end

    @left_swipe = @main_text.when_swiped do
      p 'swipe left.'
    end
    @left_swipe.direction = UISwipeGestureRecognizerDirectionLeft

    @right_swipe = @main_text.when_swiped do
      p 'swipe right.'
    end
    @right_swipe.direction = UISwipeGestureRecognizerDirectionRight

  end
end
