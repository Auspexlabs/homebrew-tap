cask "writer" do
  version "0.1.5"
  sha256 "ee3c1dc3023ab8588a2496ae139379c6b0a35719152dec9ef42a2dac0ad7daed"

  url "https://github.com/Auspexlabs/writer/releases/download/v#{version}/Writer-#{version}-mac.dmg"
  name "Writer"
  desc "Edit Word, Excel, PowerPoint, Markdown and mind-map files"
  homepage "https://github.com/Auspexlabs/writer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
