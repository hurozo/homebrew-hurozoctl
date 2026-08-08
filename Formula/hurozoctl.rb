class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.0/hurozoctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "ARM64_SHA256_PENDING_FIRST_RELEASE"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.0/hurozoctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "AMD64_SHA256_PENDING_FIRST_RELEASE"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
