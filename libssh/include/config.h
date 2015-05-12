/************************** HEADER FILES *************************/

/* Define to 1 if you have the <argp.h> header file. */
//#cmakedefine HAVE_ARGP_H 1

/* Define to 1 if you have the <aprpa/inet.h> header file. */
//#cmakedefine HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <pty.h> header file. */
//#cmakedefine HAVE_PTY_H 1

/* Define to 1 if you have the <utmp.h> header file. */
//#cmakedefine HAVE_UTMP_H 1

/* Define to 1 if you have the <util.h> header file. */
//#cmakedefine HAVE_UTIL_H 1

/* Define to 1 if you have the <libutil.h> header file. */
//#cmakedefine HAVE_LIBUTIL_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <termios.h> header file. */
//#cmakedefine HAVE_TERMIOS_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the <openssl/aes.h> header file. */
#define HAVE_OPENSSL_AES_H 1

/* Define to 1 if you have the <wspiapi.h> header file. */
#define HAVE_WSPIAPI_H 1

/* Define to 1 if you have the <openssl/blowfish.h> header file. */
#define HAVE_OPENSSL_BLOWFISH_H 1

/* Define to 1 if you have the <openssl/des.h> header file. */
#define HAVE_OPENSSL_DES_H 1

/* Define to 1 if you have the <openssl/ecdh.h> header file. */
#define HAVE_OPENSSL_ECDH_H 1

/* Define to 1 if you have the <openssl/ec.h> header file. */
#define HAVE_OPENSSL_EC_H 1

/* Define to 1 if you have the <openssl/ecdsa.h> header file. */
#define HAVE_OPENSSL_ECDSA_H 1

/* Define to 1 if you have the <pthread.h> header file. */
//#cmakedefine HAVE_PTHREAD_H 1

/* Define to 1 if you have eliptic curve cryptography in openssl */
#define HAVE_OPENSSL_ECC 1

/* Define to 1 if you have eliptic curve cryptography in gcrypt */
//#cmakedefine HAVE_GCRYPT_ECC 1

/* Define to 1 if you have eliptic curve cryptography */
#define HAVE_ECC 1

/*************************** FUNCTIONS ***************************/

/* Define to 1 if you have the `snprintf' function. */
#define HAVE_SNPRINTF 1

/* Define to 1 if you have the `_snprintf' function. */
#define HAVE__SNPRINTF 1

/* Define to 1 if you have the `_snprintf_s' function. */
#define HAVE__SNPRINTF_S 1

/* Define to 1 if you have the `vsnprintf' function. */
#define HAVE_VSNPRINTF 1

/* Define to 1 if you have the `_vsnprintf' function. */
#define HAVE__VSNPRINTF 1

/* Define to 1 if you have the `_vsnprintf_s' function. */
#define HAVE__VSNPRINTF_S 1

/* Define to 1 if you have the `isblank' function. */
#define HAVE_ISBLANK 1

/* Define to 1 if you have the `strncpy' function. */
#define HAVE_STRNCPY 1

/* Define to 1 if you have the `cfmakeraw' function. */
#define HAVE_CFMAKERAW 1

/* Define to 1 if you have the `getaddrinfo' function. */
#define HAVE_GETADDRINFO 1

/* Define to 1 if you have the `poll' function. */
//#cmakedefine HAVE_POLL 1

/* Define to 1 if you have the `select' function. */
#define HAVE_SELECT 1

/* Define to 1 if you have the `clock_gettime' function. */
//#cmakedefine HAVE_CLOCK_GETTIME 1

/* Define to 1 if you have the `ntohll' function. */
//#cmakedefine HAVE_NTOHLL 1

/* Define to 1 if you have the `htonll' function. */
//#cmakedefine HAVE_HTONLL 1

/* Define to 1 if you have the `strtoull' function. */
#define HAVE_STRTOULL 1

/* Define to 1 if you have the `__strtoull' function. */
#define HAVE___STRTOULL 1

/* Define to 1 if you have the `_strtoui64' function. */
#define HAVE__STRTOUI64 1

/*************************** LIBRARIES ***************************/

/* Define to 1 if you have the `crypto' library (-lcrypto). */
#define HAVE_LIBCRYPTO 1

/* Define to 1 if you have the `gcrypt' library (-lgcrypt). */
//#cmakedefine HAVE_LIBGCRYPT 1

/* Define to 1 if you have the `pthread' library (-lpthread). */
//#cmakedefine HAVE_PTHREAD 1

/**************************** OPTIONS ****************************/

#define HAVE_GCC_THREAD_LOCAL_STORAGE 1
//#cmakedefine HAVE_MSC_THREAD_LOCAL_STORAGE 1

#define HAVE_GCC_VOLATILE_MEMORY_PROTECTION 1
#define HAVE_GCC_NARG_MACRO 1

#define HAVE_COMPILER__FUNC__ 1
#define HAVE_COMPILER__FUNCTION__ 1

/* Define to 1 if you want to enable GSSAPI */
//#cmakedefine WITH_GSSAPI 1

/* Define to 1 if you want to enable ZLIB */
#define WITH_ZLIB 1

/* Define to 1 if you want to enable SFTP */
#define WITH_SFTP 1

/* Define to 1 if you want to enable SSH1 */
#define WITH_SSH1 1

/* Define to 1 if you want to enable server support */
//#cmakedefine WITH_SERVER 1

/* Define to 1 if you want to enable debug output for crypto functions */
//#cmakedefine DEBUG_CRYPTO 1

/* Define to 1 if you want to enable pcap output support (experimental) */
//#cmakedefine WITH_PCAP 1

/* Define to 1 if you want to enable calltrace debug output */
//#cmakedefine DEBUG_CALLTRACE 1

/* Define to 1 if you want to enable NaCl support */
//#cmakedefine WITH_NACL 1

/************************* MS Windows ***************************/

#ifdef _WIN32
# ifdef _MSC_VER
/* On Microsoft compilers define inline to __inline on all others use inline */
#  undef inline
#  define inline __inline

#  undef strdup
#  define strdup _strdup
# endif // _MSC_VER
#endif /* _WIN32 */
