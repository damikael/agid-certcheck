const fs = require('fs');
const yargs = require('yargs');
const AgidCertificate = require('./lib/agid-certificate');

yargs
.scriptName("agid-chertcheck")
.usage('$0 <cmd> [args]')
.command('policy [--in, --json]', 'show X509v3 certificate policies', 
    (yargs)=> {
        yargs.positional('--in', {
            type: 'string',
            default: 'certificate.pem',
            describe: 'certificate filename'
        }),
        yargs.positional('--json', {
            type: 'string',
            default: false,
            describe: 'if present prints policies to json file with specified name'
        })
    }, function(argv) {
        let filename = argv['in'];
        let json = argv['json'];

        try {
            let file = fs.readFileSync(filename);
            let agidcert = new AgidCertificate(filename);
            let policies = agidcert.getPolicies();
            for(oid in policies) {
                console.log('OID: ' + oid + ' (' + policies[oid] + ')');
            }

            if(json) {
                fs.writeFileSync(json, JSON.stringify(policies));
            }

        } catch(exception) {
            console.log("Error: " + exception.toString());
        }

    }
)
.help()
.showHelpOnFail(false, 'Specify --help for available options')
.demandCommand(2, '')
.argv;