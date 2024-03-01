class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.11.1"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.1/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "5d5f4dea84ae45452e87a1d8f2d29b45802a7041c69cd2d9035df59886512181"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.1/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "d935403322d49641462cef7461fde494a4c7b96b0280aafd3a658df6f369db7d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.11.1/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cfa564743bae024c5344db16eff2925f36abe467a484020f333e355a426a58eb"
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
