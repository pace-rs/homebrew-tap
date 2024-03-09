class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.14.1"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.1/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "a0edb9c68d3bb34de94d15a1b1d40a82372c076eac8f6bdbb1e2bd86d11da5b1"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.1/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "257657307abe6f50e62beef9998997a8e80bc177c6b8042512d42cdb56c4e9d5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.1/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8cd95a09e88f6ba86774c9e25bfb362407cb312f73ef79a665994a9c68ba0872"
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
