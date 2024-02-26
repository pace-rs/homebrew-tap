class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.8.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "e33c09ee67b80cff73adb54dcb878b781c119eae31872c6d4fccb813a3718365"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "75dfa8bca138cfaef34f1b271a5b009ba67dd84977334b82273bad720b77c79d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "96630c78e1d422c5184af735ceb3cb9f42d6fea4a42b2e5e6b7b006800664d4a"
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
