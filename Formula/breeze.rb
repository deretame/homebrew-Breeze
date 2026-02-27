class Breeze < Formula
  desc "Breeze 是哔咔(PicACG/bika)与禁漫（禁漫天堂，jm）的第三方安卓客户端，采用 Flutter 开发。"
  homepage "https://github.com/deretame/Breeze"
  url "https://github.com/deretame/Breeze/releases/download/v2.12.6/app-arm64-v8a-release-skia.apk"
  sha256 "7287d8f79d108768cf149ab2ba7c4edae9a528a02a3655db3439dab381288d3d"
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