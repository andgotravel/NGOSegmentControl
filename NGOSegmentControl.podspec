Pod::Spec.new do |s|
  s.name             = "NGOSegmentControl"
  s.version          = "1.0.1"
  s.summary          = "A control that mimics the UISegmentControl behaviour but simply consists of 2 buttons."
  s.homepage         = "https://github.com/andgotravel/NGOSegmentControl"
  s.license          = 'MIT'
  s.author           = { "Stas Zhukovskiy" => "stzhuk@gmail.com" }
  s.source           = { :git => "https://github.com/andgotravel/NGOSegmentControl.git", :tag => s.version.to_s }
  s.platform     	 = :ios, '7.0'
  s.requires_arc 	 = true
  s.source_files 	 = 'Pod/Classes/**/*'
  s.frameworks       = 'UIKit', 'CoreGraphics'
end
