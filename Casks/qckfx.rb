cask "qckfx" do
  version "0.2.8"
  sha256 "dc65921650e510e156680ebce929f7a81659c90546f0c2e131c5085681a1cdec"

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
