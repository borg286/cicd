load("@com_adobe_rules_gitops//skylib/kustomize:kustomize.bzl", "kustomize_setup")
# -- load statements -- #

def _extension_for_com_adobe_rules_gitops_impl(ctx):
  kustomize_setup(
    name = "kustomize_bin",
  )
# -- repo definitions -- #

extension_for_com_adobe_rules_gitops = module_extension(implementation = _extension_for_com_adobe_rules_gitops_impl)
