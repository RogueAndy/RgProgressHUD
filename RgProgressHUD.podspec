Pod::Spec.new do |s|

  s.name         = "RgProgressHUD"
  s.version      = "0.0.4"
  s.summary      = "是用户提示组件，基于MBProgressHUD封装"
  s.description  = <<-DESC
                    用户提示组件，基于MBProgressHUD封装
                   DESC

  s.homepage     = "https://dazhongge.com"
  s.license      = "MIT"
  s.author       = { "Rogue" => "619455850@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/RogueAndy/RgProgressHUD.git", :tag => "#{s.version}" }

  s.source_files  = "RgProgressHUD/*"
  s.public_header_files = "RgProgressHUD/*.h"

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "MBProgressHUD", "1.2.0"
end
