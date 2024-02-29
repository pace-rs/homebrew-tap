class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.10.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.10.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "304e73e183868191a308d8ab0b537ecea1f99b735f49c3ad3b5867fc8f7abbbc"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.10.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "7c8fbcc07753978f4595bbd22210a5fdb9815d8aface827bdaf915131ec9ab0a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.10.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "61dda43c08a222bbd5c0224a0d13769f5721ee28cbbf4c0f97d9f14de933b31b"
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
