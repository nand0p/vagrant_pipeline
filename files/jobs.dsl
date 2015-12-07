job('deploy_hex7') {
    scm {
        github('nand0p/hex7')
    }
    steps {
        shell('echo "ship it"')
    }
}

job('deploy_damnswank') {
    scm {
        github('nand0p/damnswank')
    }
    steps {
        shell('echo "ship it"')
    }
}
