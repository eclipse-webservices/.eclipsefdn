local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-webservices') {
  settings+: {
    description: "",
    name: "Eclipse Web Services Tools",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('webservices') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
}
