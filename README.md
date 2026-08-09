# Hurozo Homebrew tap

Install the official `hurozoctl` binary with:

```bash
brew install hurozo/hurozoctl/hurozoctl
```

The formula downloads only immutable assets from the public
`hurozo/hurozoctl` GitHub Release. Its arm64 and amd64 checksums are updated by
the private release pipeline after that release has been independently
verified. The release dispatch opens a protected formula-update pull request;
it never writes directly to `main`.
