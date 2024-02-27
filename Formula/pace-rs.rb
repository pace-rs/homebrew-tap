class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.8.1"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.1/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "aa5a5c668a24f73c8d291eb5ab960237ba8e244e703f0dbf1ecb943f7e8c8d38"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.1/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "8113f7c68394ecb8935184ce3745debc2755f409611a9597bf75d8f80e527b8f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.8.1/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3bd41437f8b7320b163ba94dffeaf112be28186108c2663379cbd6a98d87b3fa"
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
