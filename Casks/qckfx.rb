cask "qckfx" do
  version "0.2.15"
  sha256 "f1764dd6e0796338053f28eced7c0a59f0f2d37c235cabf9c65b36e050a1b721"

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
