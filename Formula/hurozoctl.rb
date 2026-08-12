class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.57/hurozoctl_0.1.57_darwin_arm64.tar.gz"
      sha256 "c3711966073dd905c4e076236d48c56663f580d98ec172ebbb8b3bd5b66e7d1e"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.57/hurozoctl_0.1.57_darwin_amd64.tar.gz"
      sha256 "37a41a2b029c6182d2d5bf4566a7733675029e27ab409b39fcc92db2df6f80c2"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
