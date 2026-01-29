cask "qckfx" do
  version "0.2.18"
  sha256 "bf5c501752977523904170f9b43f291d06ea5a44d72bb9d3a11e7ac5cd2a56df"

  url "https://github.com/qckfx/qckfx/releases/download/v#{version}/qckfx-#{version}.dmg"
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
