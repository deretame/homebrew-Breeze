cask "breeze" do
  version "2.12.6"
  sha256 "5811744858714911347141581174485871491134714158117448587149113471"

  url "https://github.com/deretame/Breeze/releases/download/v#{version}/Breeze-macOS.dmg"
  name "Breeze"
  desc "哔咔(PicACG)与禁漫(jm)的第三方桌面客户端"
  homepage "https://github.com/deretame/Breeze"

  app "Breeze.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Breeze.app"],
                   sudo: false
  end

  caveats <<~EOS
    由于 Breeze 尚未进行 Apple 开发者签名，首次打开时如果系统提示“应用已损坏”或“无法验证开发者”，请执行以下操作：
    
    方法 1: 在终端中执行命令放行：
      xattr -cr /Applications/Breeze.app
      
    方法 2: 在访达(Finder)的“应用程序”中找到 Breeze，按住 Control 键并点击它，然后在菜单中选择“打开”。
  EOS

  zap trash: [
    "~/Library/Application Support/com.zephyr.breeze",
    "~/Library/Caches/com.zephyr.breeze",
    "~/Library/Preferences/com.zephyr.breeze.plist",
    "~/Library/Saved Application State/com.zephyr.breeze.savedState",
  ]
end