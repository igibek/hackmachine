#! /usr/bin/env node

const { version, description } = require('./package.json');
const { program } = require('commander')
const shell = require('shelljs');
const chalk = require('chalk');
const fs = require('fs');
const path = require('path');
program
    .version(version)
    .description(description)
    .requiredOption('-d, --domain <domain>', 'the seed domain name of the target')
    .arguments('<project>')
    .action(main)



if (!shell.which('git')) {
    console.log(chalk.red('FAIL:'), 'this program depends on git and gobuster to work');
    process.exit(1);
}

program.parse(process.argv)

function main(project) {
    console.log(chalk.yellow('START:'), `automation for the project ${project}`);
    let dir = path.resolve(`./${project}`);
    if (!fs.existsSync(dir)) {
        fs.mkdirSync(dir, {recursive: true});
    }
    process.chdir(dir);
}