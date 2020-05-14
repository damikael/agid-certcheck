const x509 = require('x509');

const agid_oid = [
    '1.3.76.16.4.1',    // SubCA SPID IdP
    '1.3.76.16.4.2',    // SubCA SPID Soggetti pubblici
    '1.3.76.16.4.3',    // SubCA SPID Soggetti privati
    '1.3.76.16.7',      // SubCA PEC
    '1.3.76.16.8',      // SubCA Conservatori
    '1.3.76.16.9'       // SubCA QTSP
];


class AgidCertificate {

    constructor(pem) {
        this.pem = pem;
        this.cert = x509.parseCert(pem);
    }

    getPolicies() {
        let policies = {};
        let extensions = this.cert.extensions.certificatePolicies.split('\n');
        for(let i=0; i<extensions.length; i++) {
            if(extensions[i] && extensions[i].startsWith('Policy: ')) {
                let oid = extensions[i].substr(8);
                if(agid_oid.indexOf(oid)>-1) {
                    policies[oid] = '';
                    if(extensions[i+1] && extensions[i+1].startsWith('  CPS: ')) {
                        let cps = extensions[i+1].substr(7);
                        policies[oid] = cps;
                    }
                    if(extensions[i+1] && extensions[i+1].startsWith('  User Notice:')) {
                        if(extensions[i+2] && extensions[i+2].startsWith('    Explicit Text: ')) {
                            let policy_description = extensions[i+2].substr(19);
                            policies[oid] = policy_description;
                        }
                    }
                }
            }
        }
        return policies;
    }



}

module.exports = AgidCertificate