cask "qckfx" do
  version "0.1.5"
  sha256 "27756a5c882c27e4388f42b7e8a6488ee078e11efeaf0171f4b370776666f9e1"

  url "https://github.com/qckfx/qckfx/releases/download/v#{version}/qckfx-#{version}.zip"
  name "qckfx"
  desc "Screenshot-based iOS testing tool"
  homepage "https://qckfx.com"

  depends_on macos: ">= :ventura"

  app "qckfx.app"

  zap trash: [
    "~/Library/Application Support/qckfx",
    "~/Library/Caches/qckfx",
    "~/Library/Preferences/com.qckfx.qckfx.plist",
  ]
end
