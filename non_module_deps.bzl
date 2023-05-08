load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
# -- load statements -- #

def _non_module_deps_impl(ctx):
  http_archive(
    name = "com_adobe_rules_gitops",
    urls = [
      "https://github.com/adobe/rules_gitops/archive/refs/tags/v0.17.2.tar.gz"
    ],
    sha256 = "83124a8056b1e0f555c97adeef77ec6dff387eb3f5bc58f212b376ba06d070dd",
    strip_prefix = "rules_gitops-0.17.2",
  )
  http_archive(
    name = "io_bazel_rules_docker",
    urls = [
      "https://github.com/bazelbuild/rules_docker/releases/download/v0.25.0/rules_docker-v0.25.0.tar.gz"
    ],
    sha256 = "b1e80761a8a8243d03ebca8845e9cc1ba6c82ce7c5179ce2b295cd36f7e394bf",
  )
# -- repo definitions -- #

non_module_deps = module_extension(implementation = _non_module_deps_impl)
