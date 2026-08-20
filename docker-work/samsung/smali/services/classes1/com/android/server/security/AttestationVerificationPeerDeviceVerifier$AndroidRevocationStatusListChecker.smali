.class public final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AttestationVerificationPeerDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AndroidRevocationStatusListChecker"
.end annotation


# static fields
.field public static final REASON_PROPERTY_KEY:Ljava/lang/String; = "reason"

.field public static final STATUS_PROPERTY_KEY:Ljava/lang/String; = "status"

.field public static final TOP_LEVEL_JSON_PROPERTY_KEY:Ljava/lang/String; = "entries"


# instance fields
.field public mJsonStatusMap:Lorg/json/JSONObject;

.field public mStatusUrl:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;


# direct methods
.method public constructor <init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 459
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 461
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 467
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_17

    return-void

    .line 472
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p2, "status"

    .line 473
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "reason"

    .line 474
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_52

    .line 479
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid certificate with serial number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has status "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because reason "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :catchall_52
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable get properties for certificate with serial number "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 464
    :cond_69
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Certificate serial number can not be null."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRevocationListUrl()Ljava/lang/String;
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->-$$Nest$fgetmContext(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040ed2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusMap(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 489
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_49

    .line 495
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2f

    .line 496
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "entries"

    .line 498
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 499
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2f

    return-object v0

    :catchall_23
    move-exception v0

    if-eqz p1, :cond_2e

    .line 495
    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    .line 500
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse revocation status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_49
    move-exception p1

    .line 491
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get revocation status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->getRevocationListUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 443
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->getStatusMap(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    return-void

    .line 438
    :cond_17
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "R.string.vendor_required_attestation_revocation_list_url is empty."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForwardCheckingSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
