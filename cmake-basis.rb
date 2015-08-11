# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class CmakeBasis < Formula
  desc "cmake build and installer generation tools"
  homepage "https://github.com/schuhschuh/cmake-basis"
  url "https://github.com/schuhschuh/cmake-basis.git", :using => :git, :tag => "3.1.0"
  version "3.1"
  #sha256 ""

  depends_on "cmake" => :build
  depends_on "doxygen" => :recommended
  depends_on :python => "sphinx" => :recommended
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  # The optional devel block is only executed if the user passes `--devel`.
  # Use this to specify a not-yet-released version of a software.
  devel do

    url "https://example.com/repo.git", :using => :git, :branch => "develop"

  end
  
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end
 


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test cmake-basis`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end