# node sass boilerplate

1. This boilerplate uses:
  * nvm
  * node
  * imagemin-cli
  * sass
  * browsersync
  * 7-1 pattern (https://sass-guidelin.es/#the-7-1-pattern)

2. Run "bash setup.sh" in the terminal to setup the project.
The setup script will:
  * check if browser-sync is installed globally and install it if not.
  * install the npm dependencies for the project
  * optionally: add 7-1 sass structure
  * optionally: create git repo and commit

3. available npm commands
  * start develop: npm run start
  * build for production: npm run build:css
  * optimize images: npm run imagemin

4. remove all installed from bash
sudo rm -R node_modules .git sass-boilerplate; rm package-lock.json

