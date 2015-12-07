job('deploy_hex7') {
    scm {
        git {
            github('nand0p/hex7')
            wipeOutWorkspace()
        }
    }
    steps {
        shell('echo "ship it"')
    }
}

job('deploy_damnswank') {
    scm {
        git {
            remote {
                url('git@github.com:nand0p/damnswank.git')
                branch('master')
            }
            wipeOutWorkspace()
        }
    }
    steps {
        shell('echo "ship it"')
    }
}
