Pod::Spec.new do |s|
  s.name         = "GGProgressHUD"
  s.version      = "0.0.1"
  s.summary      = “GGProgressHUD inherit the MBProgressHUD."

  s.description  = <<-DESC
                   GGProgressHUD is inherit the MBProgressHUD. You can touch anywhere when a tip is show!

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/Otherplayer/GGProgressHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { “Otherplayer” => "osmk@qq.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/Otherplayer/GGProgressHUD.git”, :tag => "0.0.1" }
  s.source_files = '*.{h,m}'
  s.framework    = "CoreGraphics"
  s.requires_arc = true
  s.dependency “MBProgressHUD”, "~> 0.9.1"

end
