cask "qckfx" do
  version "0.1.5"
  sha256 "2f10e12e514ecf286005f03acec78a7433d8a01c6ae1bca05105e509558e5727"

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
