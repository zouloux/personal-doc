# N, node versions manager

### Install n with brew

- `brew install n`

### Install latest node version

- `n latest`

### Change global npm directory

[More info](https://askcodez.com/erreur-eacces-le-refus-dune-autorisation-dacceder-a-usr-lib-node_modules.html)

- `mkdir ~/.npm-global`
- `npm config set prefix '~/.npm-global'`

##### Add bin to paths in zprofile

- `vi ~/.zprofile`
- Add this line : `export PATH=~/.npm-global/bin:$PATH`
- Restart terminal or `source ~/.zprofile`
