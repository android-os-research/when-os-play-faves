.class public Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "TestOnlyInsecureCertificateHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TestCertHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesCredentialSupportInsecureMode(I[B)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    return p0

    :cond_b
    const-string p1, "INSECURE_PSWD_"

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 106
    array-length v0, p2

    array-length v1, p1

    if-ge v0, v1, :cond_16

    return p0

    :cond_16
    move v0, p0

    .line 109
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_24

    .line 110
    aget-byte v1, p2, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_21

    return p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_8

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_8
    const-string p0, "TestCertHelper"

    const-string/jumbo p1, "rootCertificateAlias is null or empty - use secure default value"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleCloudKeyVaultServiceV1"

    :cond_12
    return-object p1
.end method

.method public getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 58
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    .line 62
    :cond_f
    invoke-static {p1}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_16

    return-object p0

    .line 64
    :cond_16
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x1c

    const-string v0, "The provided root certificate alias is invalid"

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public isTestOnlyCertificateAlias(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isValidRootCertificateAlias(Ljava/lang/String;)Z
    .registers 3

    .line 86
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v2, "INSECURE_KEY_ALIAS_KEY_MATERIAL_IS_NOT_PROTECTED_"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 127
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding key with insecure alias "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to the recovery snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestCertHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_6a
    return-object p0
.end method
