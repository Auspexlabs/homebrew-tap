cask "writer" do
  version "0.1.0"
  sha256 "e268d7d1bc66ed6c21fa004cb932084aefa06c6d7742840e6193fa7560cfbc78"

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
