require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/LofWalter/react-native-tooltip.git", :tag => "v#{s.version}" }
  s.source_files = 'ToolTipMenu/*.{h,m}'

  s.dependency 'React'
end