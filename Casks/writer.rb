cask "writer" do
  version "0.1.1"
  sha256 "2d773190f7c2d4d96dcd893f92b7fa44f6bf45739899489133111f3587802d50"

  url "https://github.com/Auspexlabs/writer/releases/download/v#{version}/Writer-#{version}-mac.dmg"
  name "Writer"
  desc "Edit Word, Excel, PowerPoint, Markdown and mind-map files"
  homepage "https://github.com/Auspexlabs/writer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Writer.app"
  binary "#{appdir}/Writer.app/Contents/MacOS/writer"

  zap trash: [
    "~/Library/Application Scripts/cn.thewriter.app",
    "~/Library/Application Support/cn.thewriter.app",
    "~/Library/Application Support/Writer",
    "~/Library/Caches/cn.thewriter.app",
    "~/Library/Containers/cn.thewriter.app",
    "~/Library/Preferences/cn.thewriter.app.plist",
    "~/Library/WebKit/cn.thewriter.app",
  ]
end
