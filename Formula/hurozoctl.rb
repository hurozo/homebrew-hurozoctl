class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.60/hurozoctl_0.1.60_darwin_arm64.tar.gz"
      sha256 "605c6bd1aabe77b2cef141832539bfa1fec312e0951772bdb9a5aca213fb50db"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.60/hurozoctl_0.1.60_darwin_amd64.tar.gz"
      sha256 "f90c0badb5418330671e761bfc50ac9fc5ac7745ad2b7c3b68e6f57942845d1d"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
