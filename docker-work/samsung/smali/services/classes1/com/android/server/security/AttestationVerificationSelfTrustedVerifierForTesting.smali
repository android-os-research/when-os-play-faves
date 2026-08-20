.class public Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
.super Ljava/lang/Object;
.source "AttestationVerificationSelfTrustedVerifierForTesting.java"


# static fields
.field public static final ANDROID_KEYMINT_KEY_DESCRIPTION_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field public static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final ATTESTATION_CHALLENGE_INDEX:I = 0x4

.field public static final DEBUG:Z

.field public static final GOLDEN_ALIAS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "AVF"

.field public static volatile sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;


# instance fields
.field public final mAndroidKeyStore:Ljava/security/KeyStore;

.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public mGoldenRootCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 67
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    const-string v1, "AVF"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->DEBUG:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Golden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    return-void
.end method

.method public constructor <init>()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "X.509"

    .line 115
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string v0, "PKIX"

    .line 116
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    const-string v0, "AndroidKeyStore"

    .line 117
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mAndroidKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 119
    sget-object v3, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "EC"

    .line 121
    invoke-static {v4, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 122
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "SHA-256"

    const-string v6, "SHA-512"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 126
    invoke-virtual {v0, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 131
    :cond_52
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 132
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 133
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;)V
    .registers 2

    .line 109
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AVF"

    .line 110
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 103
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AVF"

    .line 104
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public static getInstance()Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez v0, :cond_17

    .line 92
    const-class v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    monitor-enter v0

    .line 93
    :try_start_7
    sget-object v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez v1, :cond_12

    .line 94
    new-instance v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    invoke-direct {v1}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;-><init>()V

    sput-object v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 97
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 99
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    return-object v0
.end method


# virtual methods
.method public final checkLeafChallenge(Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p2}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_20

    const-string/jumbo p2, "localbinding.challenge"

    .line 206
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const-string p0, "Self-Trusted validation failed; challenge mismatch."

    .line 209
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :catchall_20
    move-exception p0

    const-string p1, "Unable to parse challenge from certificate."

    .line 202
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 217
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 216
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 p1, 0x4

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public final getTrustAnchors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/security/cert/TrustAnchor;

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final validateRequirements(Landroid/os/Bundle;)Z
    .registers 4

    .line 185
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    const-string p0, "Requirements does not contain exactly 1 key."

    .line 186
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_e
    const-string/jumbo p0, "localbinding.challenge"

    .line 189
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "Requirements does not contain key: localbinding.challenge"

    .line 190
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_1d
    return v1
.end method

.method public verifyAttestation(ILandroid/os/Bundle;[B)I
    .registers 7

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_a
    const/4 p3, 0x2

    .line 141
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1d

    .line 142
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_1c} :catch_35

    goto :goto_a

    :cond_1d
    const/4 v1, 0x3

    if-ne p1, v1, :cond_34

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->validateRequirements(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 151
    invoke-virtual {p0, p2, v0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->checkLeafChallenge(Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyCertificateChain(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    return p3

    :catch_35
    move-exception p0

    const-string p1, "Unable to parse certificates from attestation"

    .line 145
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public final verifyCertificateChain(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_e

    const-string p0, "Certificate chain less than 2 in size."

    .line 161
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 166
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 167
    new-instance v0, Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 170
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 171
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p0

    const-string p1, "Invalid certificate chain"

    .line 173
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
