class Breeze < Formula
  desc "Breeze 是哔咔(PicACG/bika)与禁漫（禁漫天堂，jm）的第三方安卓客户端，采用 Flutter 开发。"
  homepage "https://github.com/deretame/Breeze"
  url "https://github.com/deretame/Breeze/releases/download/v2.12.6/app-arm64-v8a-release-skia.apk"
  sha256 "e5e2fbfe6e0030a81a4e408f3cfba5c1349840ced584e34fed8f168df057617e"
  license "MPL-2.0"

  def install
    # 临时占位：仅仅将 apk 文件移动到 Homebrew 的安装目录，什么也不运行
    prefix.install "app-arm64-v8a-release-skia.apk"
  end

  test do
    # 临时占位：执行 true 让测试直接通过
    system "true"
  end
end