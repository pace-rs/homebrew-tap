class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  homepage "https://pace.cli.rs"
  version "0.15.1"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.1/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "241cf4bc75a55e53c4e08d8997c8fa0cabeddad0424f596370ea8fb705d40a0e"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.1/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "98875b730e54789fbc3ed7a1423fc9d1d618cdb393f41e81ab94e83a0e63cd1b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.15.1/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2163f367c1746f7ff10b1600b7a285875286c8e51b0dd137a6937c0e032dc6c3"
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
