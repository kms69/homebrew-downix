cask "downix" do
  version "1.0.2"
  sha256 "508cf68bfda07e8d24a8ee81d09b2a839cf30e096ee38615bb9b753a6b8084a1"

  url "https://github.com/kms69/Downix/releases/download/v#{version}/Downix-#{version}.dmg"
  name "Downix"
  desc "Download manager with multi-connection speed, resume and video downloads"
  homepage "https://github.com/kms69/Downix"

  depends_on macos: ">= :ventura"

  app "Downix.app"

  zap trash: [
    "~/Library/Application Support/DownloadManager",
    "~/Library/Caches/DownloadManager",
    "~/Library/Caches/com.downloadmanager.app",
    "~/Library/Logs/DownloadManager",
  ]
end
