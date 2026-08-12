class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.55/hurozoctl_0.1.55_darwin_arm64.tar.gz"
      sha256 "095cac8166821d20a8bd6e79db75f7a8b359eec3352d9022df6f8e4fb27873bf"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.55/hurozoctl_0.1.55_darwin_amd64.tar.gz"
      sha256 "a09e80e17976cf7192cc5780e97cfb95a43251e77f346a5c6ac81969766061b3"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
