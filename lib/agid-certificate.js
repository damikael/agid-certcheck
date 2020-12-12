const x509 = require('x509');

const SUBCA_IDP             = '1.3.76.16.4.1';
const SUBCA_PUB             = '1.3.76.16.4.2';
const SUBCA_PRIV            = '1.3.76.16.4.3';
const SUBCA_PEC             = '1.3.76.16.7';
const SUBCA_CONSERVATORI    = '1.3.76.16.8';
const SUBCA_EIDAS_TLS       = '1.3.76.16.9';
const CERT_SP_PUB           = '1.3.76.16.4.2.1';
const CERT_AGG_SP_PUB       = '1.3.76.16.4.2.2';
const CERT_AA_PUB           = '1.3.76.16.4.2.3';
const CERT_RAO_PUB          = '1.3.76.16.4.2.4';
const CERT_SP_PRIV          = '1.3.76.16.4.3.1';
const CERT_AGG_SP_PRIV      = '1.3.76.16.4.3.2';
const CERT_AA_PRIV          = '1.3.76.16.4.3.3';


const agid_oid = [
    SUBCA_IDP,
    SUBCA_PUB,
    SUBCA_PRIV,
    SUBCA_PEC,
    SUBCA_CONSERVATORI,
    SUBCA_EIDAS_TLS,
    CERT_SP_PUB,
    CERT_AGG_SP_PUB,
    CERT_AA_PUB,
    CERT_RAO_PUB,
    CERT_SP_PRIV,
    CERT_AGG_SP_PRIV,
    CERT_AA_PRIV,
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

    isForIdP() { 
        return this.getPolicies()[SUBCA_IDP]!=undefined; 
    }

    isForPublic() { 
        return (
            this.getPolicies()[SUBCA_PUB]!=undefined 
            || this.getPolicies()[CERT_SP_PUB]!=undefined
            || this.getPolicies()[CERT_AGG_SP_PUB]!=undefined
            || this.getPolicies()[CERT_AA_PUB]!=undefined
            || this.getPolicies()[CERT_RAO_PUB]!=undefined
        ); 
    }

    isForRAO() {
        return (
            this.getPolicies()[CERT_RAO_PUB]!=undefined 
        ); 
    }

    isForPrivate() { 
        return (
            this.getPolicies()[SUBCA_PRIV]!=undefined 
            || this.getPolicies()[CERT_SP_PRIV]!=undefined
            || this.getPolicies()[CERT_AGG_SP_PRIV]!=undefined
            || this.getPolicies()[CERT_AA_PRIV]!=undefined
        ); 
    }

    isForPEC() { 
        return this.getPolicies()[SUBCA_PEC]!=undefined; 
    }

    isForConservatori() { 
        return this.getPolicies()[SUBCA_CONSERVATORI]!=undefined; 
    }

    isForEidasTls() { 
        return this.getPolicies()[SUBCA_EIDAS_TLS]!=undefined; 
    }

}

module.exports = AgidCertificate