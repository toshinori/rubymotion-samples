class RootViewController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    self.view.when_tapped do
      tapped
    end
  end

  def tapped
    p 'tapped'
    UIView.beginAnimations(nil, context:nil)

    UIView.setAnimationDuration(0.5)

    # UIViewAnimationCurveEaseInOut
    # UIViewAnimationCurveEaseIn
    # UIViewAnimationCurveEaseOut
    # UIViewAnimationCurveLinear
    UIView.setAnimationCurve(UIViewAnimationCurveEaseOut)

    # UIViewAnimationTransitionNone
    # UIViewAnimationTransitionFlipFromLeft
    # UIViewAnimationTransitionFlipFromRight
    # UIViewAnimationTransitionCurlUp
    # UIViewAnimationTransitionCurlDown
    UIView.setAnimationTransition(UIViewAnimationTransitionCurlUp, forView:self.view, cache:true)
    UIView.commitAnimations

  end

end
