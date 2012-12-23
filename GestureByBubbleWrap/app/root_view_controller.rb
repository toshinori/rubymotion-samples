class RootViewController < UIViewController
  attr_accessor :main_text
  attr_accessor :left_swipe, :right_swipe
  attr_accessor :two_finger_tap
  attr_accessor :double_tap

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

    # 2本指とダブルタップを検知
    # ただしTextViewがアクティブだと検知できない
    @two_finger_tap = @main_text.when_tapped do
      p 'two finger.'
    end
    @two_finger_tap.numberOfTouchesRequired = 2

    @double_tap = @main_text.when_tapped do
      p 'double tap.'
    end
    @double_tap.numberOfTapsRequired = 2
  end
end
