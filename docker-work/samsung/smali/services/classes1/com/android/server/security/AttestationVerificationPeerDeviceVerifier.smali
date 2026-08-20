.class public Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "AttestationVerificationPeerDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MAX_PATCH_AGE_MONTHS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "AVF"


# instance fields
.field public mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mContext:Landroid/content/Context;

.field public final mRevocationEnabled:Z

.field public final mTestLocalPatchDate:Ljava/time/LocalDate;

.field public final mTestSystemDate:Ljava/time/LocalDate;

.field public final mTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 82
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
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    const-string p1, "X.509"

    .line 107
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string p1, "PKIX"

    .line 108
    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 112
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    const-string p1, "X.509"

    .line 121
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string p1, "PKIX"

    .line 122
    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 123
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 124
    iput-boolean p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 125
    iput-object p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 126
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;)V
    .registers 2

    .line 100
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AVF"

    .line 101
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 94
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AVF"

    .line 95
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public final checkCertificateAttributes(Ljava/security/cert/X509Certificate;ILandroid/os/Bundle;)Z
    .registers 9

    const/4 v0, 0x0

    .line 275
    :try_start_1
    invoke-static {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e2

    .line 283
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_12

    const-string p0, "Attestation version is not at least 3 (Keymaster 4)."

    .line 284
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 289
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeymasterVersion()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1f

    const-string p0, "Keymaster version is not at least 4."

    .line 290
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 295
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsVersion()I

    move-result v2

    const v4, 0x186a0

    if-ge v2, v4, :cond_2e

    const-string p0, "Android OS version is not 10+."

    .line 296
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 300
    :cond_2e
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isAttestationHardwareBacked()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string p0, "Key is not HW backed."

    .line 301
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 305
    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isKeymasterHardwareBacked()Z

    move-result v2

    if-nez v2, :cond_46

    const-string p0, "Keymaster is not HW backed."

    .line 306
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 310
    :cond_46
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v2

    sget-object v4, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v2, v4, :cond_54

    const-string p0, "Boot state not Verified."

    .line 311
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 316
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isVerifiedBootLocked()Z

    move-result v2

    if-nez v2, :cond_60

    const-string p0, "Verified boot state is not locked."

    .line 317
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_5f} :catch_db

    return v0

    .line 326
    :cond_60
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsPatchLevel()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    if-nez v2, :cond_70

    const-string p0, "OS patch level is not within valid range."

    .line 327
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 332
    :cond_70
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    const-string v4, "Boot patch level is not within valid range."

    if-nez v2, :cond_80

    .line 333
    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 337
    :cond_80
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyVendorPatchLevel()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    if-nez v2, :cond_90

    const-string p0, "Vendor patch level is not within valid range."

    .line 338
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 342
    :cond_90
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result p0

    if-nez p0, :cond_9e

    .line 343
    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_9e
    const/4 p0, 0x2

    if-ne p2, p0, :cond_bc

    const-string/jumbo p0, "localbinding.public_key"

    .line 349
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 350
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 349
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_bc

    const-string p0, "Provided public key does not match leaf certificate public key."

    .line 351
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_bc
    if-ne p2, v3, :cond_d9

    const-string/jumbo p0, "localbinding.challenge"

    .line 357
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 358
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 357
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_d9

    const-string p0, "Provided challenge does not match leaf certificate challenge."

    .line 359
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_d9
    const/4 p0, 0x1

    return p0

    :catch_db
    move-exception p0

    const-string p1, "VerifiedBootLocked is not set."

    .line 321
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catchall_e2
    move-exception p0

    const-string p1, "Could not get ParsedAttestationAttributes from Certificate."

    .line 278
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final getCertificateBytes(Ljava/lang/String;)[B
    .registers 3

    const-string p0, "\\s+"

    const-string v0, "\n"

    .line 257
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-BEGIN\\nCERTIFICATE-"

    const-string v0, "-BEGIN CERTIFICATE-"

    .line 258
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-END\\nCERTIFICATE-"

    const-string v0, "-END CERTIFICATE-"

    .line 260
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getCertificates([B)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    :goto_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_1c

    .line 186
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public final getTrustAnchorResources()[Ljava/lang/String;
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10701b8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTrustAnchors()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchorResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 245
    new-instance v5, Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 247
    invoke-virtual {p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 245
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_29} :catch_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 253
    :cond_2c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catch_31
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 251
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Invalid trust anchor certificate."

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isValidPatchLevel(I)Z
    .registers 9

    .line 373
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v0, :cond_5

    goto :goto_d

    .line 374
    :cond_5
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_d
    const/4 v1, 0x0

    .line 379
    :try_start_e
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz p0, :cond_13

    goto :goto_19

    .line 382
    :cond_13
    sget-object p0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_7a

    .line 391
    :goto_19
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, p0, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_27

    return v2

    .line 396
    :cond_27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_40

    const-string p0, "Patch level is not in format YYYYMM or YYYYMMDD"

    .line 398
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_40
    const/4 v0, 0x4

    .line 402
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 403
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 404
    invoke-static {v6, p1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 408
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-lez v0, :cond_68

    .line 409
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-gtz p0, :cond_66

    :goto_65
    move v1, v2

    :cond_66
    move v2, v1

    goto :goto_79

    .line 411
    :cond_68
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-gez v0, :cond_79

    .line 412
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-gtz p0, :cond_66

    goto :goto_65

    :cond_79
    :goto_79
    return v2

    .line 385
    :catchall_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Build.VERSION.SECURITY_PATCH: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in format YYYY-MM-DD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1
.end method

.method public final validateCertificateChain(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_e

    const-string p0, "Certificate chain less than 2 in size."

    .line 218
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 223
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 225
    iget-boolean v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz v2, :cond_28

    .line 228
    new-instance v2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker-IA;)V

    .line 229
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 232
    :cond_28
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 233
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_32

    const/4 p0, 0x1

    return p0

    :catchall_32
    move-exception p0

    const-string p1, "Invalid certificate chain."

    .line 235
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final validateRequirements(ILandroid/os/Bundle;)Z
    .registers 6

    .line 193
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_e

    const-string p0, "Requirements does not contain exactly 1 key."

    .line 194
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_e
    const/4 p0, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_29

    if-eq p1, p0, :cond_29

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binding type is not supported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_29
    if-ne p1, v2, :cond_3a

    const-string/jumbo v2, "localbinding.public_key"

    .line 203
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string p0, "Requirements does not contain key: localbinding.public_key"

    .line 204
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_3a
    if-ne p1, p0, :cond_4b

    const-string/jumbo p0, "localbinding.challenge"

    .line 208
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    const-string p0, "Requirements does not contain key: localbinding.challenge"

    .line 209
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_4b
    return v0
.end method

.method public verifyAttestation(ILandroid/os/Bundle;[B)I
    .registers 7

    .line 146
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const/4 v1, 0x2

    if-nez v0, :cond_b

    const-string p0, "Was unable to initialize CertificateFactory onCreate."

    .line 147
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v0, :cond_15

    const-string p0, "Was unable to initialize CertPathValidator onCreate."

    .line 152
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 158
    :cond_15
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object p3
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_19} :catch_40

    .line 164
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, "Attestation contains no certificates."

    .line 165
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_25
    const/4 v0, 0x0

    .line 169
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateRequirements(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 171
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 172
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkCertificateAttributes(Ljava/security/cert/X509Certificate;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1

    :catch_40
    move-exception p0

    const-string p1, "Unable to parse attestation certificates."

    .line 160
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
