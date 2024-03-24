class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  homepage "https://pace.cli.rs"
  version "0.15.2"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.2/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "e6fb855cab8c245158e26c9cc8b12503df6d6ba393a36dffc695d530b6bdc939"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.2/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "4a813b027ab57e0da0bb967f30b437e4a1710614e80bb563c920311a8a30d071"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.2/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7634c0129a6720155298b22a6e94bf629f18f2365748b26e946d74cf0b94296b"
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
