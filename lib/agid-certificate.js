const x509 = require('x509');

const IDP = '1.3.76.16.4.1';
const PUBLIC = '1.3.76.16.4.2';
const PRIVATE = '1.3.76.16.4.3';
const PEC = '1.3.76.16.7';
const CONSERVATORI = '1.3.76.16.8';
const QTSP = '1.3.76.16.9';

const agid_oid = [
    IDP,            // SubCA SPID IdP
    PUBLIC,         // SubCA SPID Soggetti pubblici
    PRIVATE,        // SubCA SPID Soggetti privati
    PEC,            // SubCA PEC
    CONSERVATORI,   // SubCA Conservatori
    QTSP            // SubCA QTSP
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

    isForIdP() { return this.getPolicies()[IDP]!=undefined; }
    isForPublic() { return this.getPolicies()[PUBLIC]!=undefined; }
    isForPrivate() { return this.getPolicies()[PRIVATE]!=undefined; }
    isForPEC() { return this.getPolicies()[PEC]!=undefined; }
    isForConservatori() { return this.getPolicies()[CONSERVATORI]!=undefined; }
    isForQTSP() { return this.getPolicies()[QTSP]!=undefined; }

}

module.exports = AgidCertificate