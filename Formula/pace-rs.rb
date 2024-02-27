class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.8.2"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.2/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "8f4fc3e10cd2a99cd2f88077e923b1f5806abb4d8f34d1bd865d28a3652705ca"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.2/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "080e33d8517a662bc2655030606fffbdeeb4336e5e5c087825628d07cc78aa91"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.2/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a56919005df93d25ac9543c66f50cca556427b5691eac38c5d1d11ce4b4dfbf6"
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
