class AppDelegate
  attr_accessor :window
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds).tap do |w|
      w.rootViewController = RootViewController.new
      w.make_key_and_visible
    end
    true
  end
end