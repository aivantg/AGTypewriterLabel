#
# Be sure to run `pod lib lint AGTypewriterLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AGTypewriterLabel'
  s.version          = '0.1.2'
  s.summary          = 'A lightweight UILabel subclass that displays text character-by-character based on customizable animations.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "AGTypewriterLabel is a UI Label that can animate the display of it's text character by character. How fast it goes and when it pauses is completely up to you! It's perfect for use in games, instructional manuals, and anywhere else you can see fit!"

  s.homepage         = 'https://github.com/aivantg/AGTypewriterLabel'
  s.screenshots      = "https://raw.githubusercontent.com/aivantg/AGTypewriterLabel/master/Assets/demo.gif"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aivantgoyal' => 'aivant.developer@gmail.com' }
  s.source           = { :git => 'https://github.com/aivantg/AGTypewriterLabel.git', :tag => s.version.to_s }
  s.swift_version = '4.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'AGTypewriterLabel/Classes/**/*'
  s.frameworks = 'UIKit'
end
