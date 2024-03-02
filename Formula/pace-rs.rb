class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.12.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.12.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "404b9d52f9a79adaf8e98f35f87725078186c28e4fb5e3d885f7cffcb381bff1"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.12.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "305d37d9aed65adbabbe0887b047bf8b9056c8cc354b56b7d174d74a3da5f832"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.12.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "19c402732cc4de90214c1cf94d167cf5b5e28471be76c4f294ae80bc6e264058"
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
