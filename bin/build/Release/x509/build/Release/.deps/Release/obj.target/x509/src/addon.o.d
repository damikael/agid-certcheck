cmd_Release/obj.target/x509/src/addon.o := g++ '-DVERSION="0.3.4"' '-DNODE_GYP_MODULE_NAME=x509' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DBUILDING_NODE_EXTENSION' -I/home/spidonboarding/.cache/node-gyp/10.20.1/include/node -I/home/spidonboarding/.cache/node-gyp/10.20.1/src -I/home/spidonboarding/.cache/node-gyp/10.20.1/deps/openssl/config -I/home/spidonboarding/.cache/node-gyp/10.20.1/deps/openssl/openssl/include -I/home/spidonboarding/.cache/node-gyp/10.20.1/deps/uv/include -I/home/spidonboarding/.cache/node-gyp/10.20.1/deps/zlib -I/home/spidonboarding/.cache/node-gyp/10.20.1/deps/v8/include -I../include -I../../nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++1y -MMD -MF ./Release/.deps/Release/obj.target/x509/src/addon.o.d.raw   -c -o Release/obj.target/x509/src/addon.o ../src/addon.cc
Release/obj.target/x509/src/addon.o: ../src/addon.cc ../include/addon.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8-version.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8config.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8-platform.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_version.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8.h \
 ../include/x509.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_version.h \
 ../../nan/nan.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/errno.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/version.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/unix.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/threadpool.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/linux.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_buffer.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_object_wrap.h \
 ../../nan/nan_callbacks.h ../../nan/nan_callbacks_12_inl.h \
 ../../nan/nan_maybe_43_inl.h ../../nan/nan_converters.h \
 ../../nan/nan_converters_43_inl.h ../../nan/nan_new.h \
 ../../nan/nan_implementation_12_inl.h ../../nan/nan_persistent_12_inl.h \
 ../../nan/nan_weak.h ../../nan/nan_object_wrap.h ../../nan/nan_private.h \
 ../../nan/nan_typedarray_contents.h ../../nan/nan_json.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/asn1.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/e_os2.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/opensslconf.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/./opensslconf_asm.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/././archs/linux-x86_64/asm/include/openssl/opensslconf.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/opensslv.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bio.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/crypto.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/safestack.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/stack.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ossl_typ.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/cryptoerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/symhacks.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bioerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/asn1err.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bn.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bnerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/err.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/lhash.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pem.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/evp.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/evperr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/objects.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/obj_mac.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/objectserr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/buffer.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/buffererr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ec.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ecerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/rsa.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/rsaerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dsa.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dh.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dherr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dsaerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/sha.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509err.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509_vfy.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pkcs7.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pkcs7err.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pemerr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509v3.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/conf.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/conferr.h \
 /home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509v3err.h
../src/addon.cc:
../include/addon.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8-version.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8config.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8-platform.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_version.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/v8.h:
../include/x509.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_version.h:
../../nan/nan.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/errno.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/version.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/unix.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/threadpool.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/uv/linux.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_buffer.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/node_object_wrap.h:
../../nan/nan_callbacks.h:
../../nan/nan_callbacks_12_inl.h:
../../nan/nan_maybe_43_inl.h:
../../nan/nan_converters.h:
../../nan/nan_converters_43_inl.h:
../../nan/nan_new.h:
../../nan/nan_implementation_12_inl.h:
../../nan/nan_persistent_12_inl.h:
../../nan/nan_weak.h:
../../nan/nan_object_wrap.h:
../../nan/nan_private.h:
../../nan/nan_typedarray_contents.h:
../../nan/nan_json.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/asn1.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/e_os2.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/opensslconf.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/./opensslconf_asm.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/././archs/linux-x86_64/asm/include/openssl/opensslconf.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/opensslv.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bio.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/crypto.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/safestack.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/stack.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ossl_typ.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/cryptoerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/symhacks.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bioerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/asn1err.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bn.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/bnerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/err.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/lhash.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pem.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/evp.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/evperr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/objects.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/obj_mac.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/objectserr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/buffer.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/buffererr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ec.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/ecerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/rsa.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/rsaerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dsa.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dh.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dherr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/dsaerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/sha.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509err.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509_vfy.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pkcs7.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pkcs7err.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/pemerr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509v3.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/conf.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/conferr.h:
/home/spidonboarding/.cache/node-gyp/10.20.1/include/node/openssl/x509v3err.h:
