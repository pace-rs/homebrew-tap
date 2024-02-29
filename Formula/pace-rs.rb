class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.11.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "e85047a7ad7ebeaea63dcc5a2526ca60fc88794212f10a6fcb4a07675ce5cfa4"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "b6966160323b9e17e2e175e2d05f3f8da405d065de3bb7f33466c35e990094f1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ce85e0093c292496e6487bcc3c6cfc4c4c72cf7e763bd031f689339c6f751b8c"
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
