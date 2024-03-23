class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  homepage "https://pace.cli.rs"
  version "0.15.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "f6ac7f896a42f00ffb9a15022546e8a07709d855391fff787a9057d92b9e86ca"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "ceb5377e31eb2216303d7c8fe648f10486feb21a00f70259ef15701c1d1832fd"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cf2883d97f08ddd363b3d3110e96d0db1763348ad7caed9f570b26f953b5cde1"
    end
  end
  license "AGPL-3.0-or-later"

  def install
    on_macos do
      on_arm do
        bin.install "pace"
      end
    end
    on_macos do
      on_intel do
        bin.install "pace"
      end
    end
    on_linux do
      on_intel do
        bin.install "pace"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
