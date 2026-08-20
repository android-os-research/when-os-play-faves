.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSpi"


# instance fields
.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mNamespace:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method private static blacklist assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V
    .registers 9
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "targetDomain"    # I
    .param p2, "targetNamespace"    # I
    .param p3, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 598
    const/4 v0, 0x2

    if-eqz p0, :cond_1c

    iget-object v1, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v1, p1, :cond_1c

    iget v1, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v1, v0, :cond_1b

    iget-wide v1, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    goto :goto_1c

    .line 608
    :cond_1b
    return-void

    .line 601
    :cond_1c
    :goto_1c
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace keys with same alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in the same target domain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 604
    if-ne p1, v0, :cond_6d

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in the same target namespace: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_6d
    const-string v0, ""

    :goto_6f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_1e

    .line 153
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 156
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_6
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v1

    .line 157
    :catch_d
    move-exception v1

    .line 158
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1c

    .line 159
    const-string v2, "AndroidKeyStoreSpi"

    const-string v3, "Could not get key metadata from Keystore."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_1c
    const/4 v2, 0x0

    return-object v2

    .line 150
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .registers 11
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 278
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 281
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 286
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_67

    .line 293
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_28
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 294
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 301
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 311
    const-string v3, "NoPadding"

    const-string v4, "PKCS1Padding"

    const-string v5, "OAEPPadding"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 315
    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 320
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 324
    :goto_67
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 326
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .line 322
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_6f
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getTargetDomain()I
    .registers 3

    .line 144
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 145
    const/4 v0, 0x0

    goto :goto_8

    .line 146
    :cond_7
    const/4 v0, 0x2

    .line 144
    :goto_8
    return v0
.end method

.method private blacklist getUniqueAliases()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1011
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1012
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1011
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1015
    .local v0, "keys":[Landroid/system/keystore2/KeyDescriptor;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1016
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_22

    aget-object v4, v0, v3

    .line 1017
    .local v4, "d":Landroid/system/keystore2/KeyDescriptor;
    iget-object v5, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_1e} :catch_23

    .line 1016
    nop

    .end local v4    # "d":Landroid/system/keystore2/KeyDescriptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1019
    :cond_22
    return-object v1

    .line 1020
    .end local v0    # "keys":[Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_23
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/security/KeyStoreException;
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to list keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1051
    if-eqz p1, :cond_10

    .line 1055
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1058
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 1052
    .end local v0    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setPrivateKeyEntry$0(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "importArgs"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 472
    nop

    .line 474
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 472
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "importArgs"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 724
    nop

    .line 726
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 724
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 136
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 137
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 138
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 139
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 140
    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 27
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 331
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v0, 0x1

    .line 332
    .local v0, "securitylevel":I
    const/4 v5, 0x0

    .line 334
    .local v5, "flags":I
    if-nez v4, :cond_14

    .line 335
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    move v12, v5

    move-object v13, v6

    move v5, v0

    .local v6, "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_40

    .line 336
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_14
    instance-of v6, v4, Landroid/security/KeyStoreParameter;

    if-eqz v6, :cond_23

    .line 337
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    .line 338
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    move-object v7, v4

    check-cast v7, Landroid/security/KeyStoreParameter;

    .line 339
    move v12, v5

    move-object v13, v6

    move v5, v0

    goto :goto_40

    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_23
    instance-of v6, v4, Landroid/security/keystore/KeyProtection;

    if-eqz v6, :cond_34d

    .line 340
    move-object v6, v4

    check-cast v6, Landroid/security/keystore/KeyProtection;

    .line 341
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 347
    or-int/lit8 v5, v5, 0x1

    .line 351
    :cond_32
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 352
    const/4 v0, 0x2

    move v12, v5

    move-object v13, v6

    move v5, v0

    goto :goto_40

    .line 351
    :cond_3d
    move v12, v5

    move-object v13, v6

    move v5, v0

    .line 362
    .end local v0    # "securitylevel":I
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    .local v5, "securitylevel":I
    .local v12, "flags":I
    .local v13, "spec":Landroid/security/keystore/KeyProtection;
    :goto_40
    if-eqz v3, :cond_345

    array-length v0, v3

    if-eqz v0, :cond_345

    .line 367
    array-length v0, v3

    new-array v14, v0, [Ljava/security/cert/X509Certificate;

    .line 368
    .local v14, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    array-length v6, v3

    if-ge v0, v6, :cond_99

    .line 369
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "X.509"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v6, :cond_82

    .line 374
    aget-object v6, v3, v0

    instance-of v6, v6, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_6b

    .line 379
    aget-object v6, v3, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v14, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 375
    :cond_6b
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    :cond_82
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    .end local v0    # "i":I
    :cond_99
    const/4 v0, 0x0

    :try_start_9a
    aget-object v6, v14, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6
    :try_end_a0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9a .. :try_end_a0} :catch_33c

    move-object v15, v6

    .line 387
    .local v15, "userCertBytes":[B
    nop

    .line 395
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_f6

    .line 400
    array-length v6, v14

    sub-int/2addr v6, v7

    new-array v6, v6, [[B

    .line 401
    .local v6, "certsBytes":[[B
    const/4 v8, 0x0

    .line 402
    .local v8, "totalCertLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ac
    array-length v10, v6

    if-ge v9, v10, :cond_db

    .line 404
    add-int/lit8 v10, v9, 0x1

    :try_start_b1
    aget-object v10, v14, v10

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    aput-object v10, v6, v9

    .line 405
    aget-object v10, v6, v9

    array-length v10, v10
    :try_end_bc
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_b1 .. :try_end_bc} :catch_c1

    add-int/2addr v8, v10

    .line 408
    nop

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    .line 406
    :catch_c1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to encode certificate #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 415
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v9    # "i":I
    :cond_db
    new-array v9, v8, [B

    .line 416
    .local v9, "chainBytes":[B
    const/4 v10, 0x0

    .line 417
    .local v10, "outputOffset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_df
    array-length v7, v6

    if-ge v11, v7, :cond_f4

    .line 418
    aget-object v7, v6, v11

    array-length v7, v7

    .line 419
    .local v7, "certLength":I
    aget-object v3, v6, v11

    invoke-static {v3, v0, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    add-int/2addr v10, v7

    .line 421
    const/4 v3, 0x0

    aput-object v3, v6, v11

    .line 417
    .end local v7    # "certLength":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    const/4 v7, 0x1

    goto :goto_df

    .line 423
    .end local v6    # "certsBytes":[[B
    .end local v8    # "totalCertLength":I
    .end local v10    # "outputOffset":I
    .end local v11    # "i":I
    :cond_f4
    move-object v3, v9

    goto :goto_f8

    .line 424
    .end local v9    # "chainBytes":[B
    :cond_f6
    const/4 v9, 0x0

    move-object v3, v9

    .line 427
    .local v3, "chainBytes":[B
    :goto_f8
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v11

    .line 431
    .local v11, "targetDomain":I
    instance-of v6, v2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v10, "Failed to store certificate and certificate chain"

    if-eqz v6, :cond_125

    .line 432
    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 433
    .local v6, "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v7

    .line 436
    .local v7, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v11, v0, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 439
    :try_start_110
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    move-object v8, v2

    check-cast v8, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 440
    invoke-virtual {v8}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v8

    .line 439
    invoke-virtual {v0, v8, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_11c
    .catch Landroid/security/KeyStoreException; {:try_start_110 .. :try_end_11c} :catch_11e

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_11e
    move-exception v0

    .line 443
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v8, Ljava/security/KeyStoreException;

    invoke-direct {v8, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 449
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v6    # "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_125
    move-object/from16 v9, p1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, "keyFormat":Ljava/lang/String;
    if-eqz v8, :cond_31a

    const-string v6, "PKCS#8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31a

    .line 458
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    .line 459
    .local v17, "pkcs8EncodedPrivateKeyBytes":[B
    if-eqz v17, :cond_312

    .line 463
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    .line 466
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v6, 0x10000002

    .line 469
    :try_start_144
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v18

    .line 468
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-static {v6, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v0

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v6, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 477
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v0
    :try_end_163
    .catch Ljava/lang/IllegalArgumentException; {:try_start_144 .. :try_end_163} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_144 .. :try_end_163} :catch_307

    if-eqz v0, :cond_1bf

    .line 478
    :try_start_165
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v2, 0x0

    :goto_16b
    if-ge v2, v6, :cond_187

    aget-object v18, v0, v2

    .line 479
    .local v18, "digest":Ljava/lang/String;
    move-object/from16 v19, v0

    .line 481
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 479
    const v4, 0x20000005

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    nop

    .end local v18    # "digest":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, p4

    move-object/from16 v0, v19

    goto :goto_16b

    .line 485
    :cond_187
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/security/keystore2/KeymasterUtils;->isSupportTagRSAOAEPMGFDigest(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 486
    nop

    .line 487
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    .line 488
    .local v0, "keymasterEncryptionPaddings":[I
    array-length v2, v0

    const/4 v4, 0x0

    :goto_19c
    if-ge v4, v2, :cond_1b5

    aget v6, v0, v4

    .line 489
    .local v6, "padding":I
    move-object/from16 v18, v0

    .end local v0    # "keymasterEncryptionPaddings":[I
    .local v18, "keymasterEncryptionPaddings":[I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1b0

    .line 490
    const v2, 0x200000cb

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_165 .. :try_end_1af} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_165 .. :try_end_1af} :catch_1b8

    .line 494
    goto :goto_1bf

    .line 488
    .end local v6    # "padding":I
    :cond_1b0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    goto :goto_19c

    .end local v18    # "keymasterEncryptionPaddings":[I
    .restart local v0    # "keymasterEncryptionPaddings":[I
    :cond_1b5
    move-object/from16 v18, v0

    .end local v0    # "keymasterEncryptionPaddings":[I
    .restart local v18    # "keymasterEncryptionPaddings":[I
    goto :goto_1bf

    .line 560
    .end local v18    # "keymasterEncryptionPaddings":[I
    :catch_1b8
    move-exception v0

    move-object v2, v7

    move-object v4, v8

    move/from16 v16, v11

    goto/16 :goto_30c

    .line 500
    :cond_1bf
    :goto_1bf
    :try_start_1bf
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_1c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bf .. :try_end_1c4} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_1bf .. :try_end_1c4} :catch_307

    const/4 v4, 0x0

    :goto_1c5
    if-ge v4, v2, :cond_1e3

    :try_start_1c7
    aget-object v6, v0, v4

    .line 501
    .local v6, "blockMode":Ljava/lang/String;
    move-object/from16 v18, v0

    .line 503
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 501
    move/from16 v20, v2

    const v2, 0x20000004

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c7 .. :try_end_1db} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_1c7 .. :try_end_1db} :catch_1b8

    .line 500
    nop

    .end local v6    # "blockMode":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    move/from16 v2, v20

    goto :goto_1c5

    .line 506
    :cond_1e3
    nop

    .line 508
    :try_start_1e4
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    .line 509
    .restart local v0    # "keymasterEncryptionPaddings":[I
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v2
    :try_end_1f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e4 .. :try_end_1f0} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_1e4 .. :try_end_1f0} :catch_307

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_22d

    .line 510
    :try_start_1f4
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 511
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1fc
    if-ge v4, v2, :cond_22d

    aget v6, v0, v4

    .line 512
    .local v6, "keymasterPadding":I
    nop

    .line 513
    invoke-static {v6}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v16

    if-eqz v16, :cond_20a

    .line 511
    .end local v6    # "keymasterPadding":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fc

    .line 515
    .restart local v6    # "keymasterPadding":I
    :cond_20a
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 518
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ". See KeyProtection documentation."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v3    # "chainBytes":[B
    .end local v5    # "securitylevel":I
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v2
    :try_end_22d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f4 .. :try_end_22d} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_1f4 .. :try_end_22d} :catch_1b8

    .line 524
    .end local v6    # "keymasterPadding":I
    .restart local v3    # "chainBytes":[B
    .restart local v5    # "securitylevel":I
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_22d
    :try_start_22d
    array-length v2, v0
    :try_end_22e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22d .. :try_end_22e} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_22d .. :try_end_22e} :catch_307

    const/4 v4, 0x0

    :goto_22f
    const v6, 0x20000006

    if-ge v4, v2, :cond_249

    :try_start_234
    aget v16, v0, v4

    move/from16 v18, v16

    .line 525
    .local v18, "padding":I
    move-object/from16 v16, v0

    move/from16 v0, v18

    .end local v18    # "padding":I
    .local v0, "padding":I
    .local v16, "keymasterEncryptionPaddings":[I
    invoke-static {v6, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_243
    .catch Ljava/lang/IllegalArgumentException; {:try_start_234 .. :try_end_243} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_234 .. :try_end_243} :catch_1b8

    .line 524
    nop

    .end local v0    # "padding":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    goto :goto_22f

    .line 530
    .end local v16    # "keymasterEncryptionPaddings":[I
    .local v0, "keymasterEncryptionPaddings":[I
    :cond_249
    move-object/from16 v16, v0

    .end local v0    # "keymasterEncryptionPaddings":[I
    .restart local v16    # "keymasterEncryptionPaddings":[I
    :try_start_24b
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_250
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24b .. :try_end_250} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_24b .. :try_end_250} :catch_307

    const/4 v4, 0x0

    :goto_251
    if-ge v4, v2, :cond_26d

    :try_start_253
    aget-object v18, v0, v4

    .line 531
    .local v18, "padding":Ljava/lang/String;
    nop

    .line 533
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v6

    .line 531
    move-object/from16 v19, v0

    const v0, 0x20000006

    invoke-static {v0, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_266
    .catch Ljava/lang/IllegalArgumentException; {:try_start_253 .. :try_end_266} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_253 .. :try_end_266} :catch_1b8

    .line 530
    nop

    .end local v18    # "padding":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v6, v0

    move-object/from16 v0, v19

    goto :goto_251

    .line 536
    :cond_26d
    :try_start_26d
    invoke-static {v7, v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 537
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0
    :try_end_274
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26d .. :try_end_274} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_26d .. :try_end_274} :catch_307

    if-eqz v0, :cond_284

    .line 538
    const v0, 0x60000190

    .line 539
    :try_start_279
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    .line 538
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_284
    .catch Ljava/lang/IllegalArgumentException; {:try_start_279 .. :try_end_284} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_279 .. :try_end_284} :catch_1b8

    .line 542
    :cond_284
    :try_start_284
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_288
    .catch Ljava/lang/IllegalArgumentException; {:try_start_284 .. :try_end_288} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_284 .. :try_end_288} :catch_307

    if-eqz v0, :cond_298

    .line 543
    const v0, 0x60000191

    .line 545
    :try_start_28d
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    .line 543
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_298
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28d .. :try_end_298} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_28d .. :try_end_298} :catch_1b8

    .line 548
    :cond_298
    :try_start_298
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_29c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_298 .. :try_end_29c} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_298 .. :try_end_29c} :catch_307

    if-eqz v0, :cond_2ac

    .line 549
    const v0, 0x60000192

    .line 551
    :try_start_2a1
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    .line 549
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a1 .. :try_end_2ac} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_2a1 .. :try_end_2ac} :catch_1b8

    .line 554
    :cond_2ac
    :try_start_2ac
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0
    :try_end_2b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ac .. :try_end_2b0} :catch_307
    .catch Ljava/lang/IllegalStateException; {:try_start_2ac .. :try_end_2b0} :catch_307

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2c1

    .line 555
    const v0, 0x30000195

    .line 557
    :try_start_2b6
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    .line 555
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b6 .. :try_end_2c1} :catch_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_2b6 .. :try_end_2c1} :catch_1b8

    .line 562
    .end local v16    # "keymasterEncryptionPaddings":[I
    :cond_2c1
    nop

    .line 565
    :try_start_2c2
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v5}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    .line 568
    .local v6, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_2cc
    .catch Landroid/security/KeyStoreException; {:try_start_2c2 .. :try_end_2cc} :catch_2fa

    move-object v2, v7

    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v2, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    move-object v7, v0

    .line 570
    .local v7, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v0, 0x0

    move-object v4, v8

    .end local v8    # "keyFormat":Ljava/lang/String;
    .local v4, "keyFormat":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v2

    move-object/from16 v21, v10

    move v10, v12

    move/from16 v16, v11

    .end local v11    # "targetDomain":I
    .local v16, "targetDomain":I
    move-object/from16 v11, v17

    :try_start_2d9
    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0
    :try_end_2dd
    .catch Landroid/security/KeyStoreException; {:try_start_2d9 .. :try_end_2dd} :catch_2f8

    move-object v8, v0

    .line 574
    .local v8, "metadata":Landroid/system/keystore2/KeyMetadata;
    :try_start_2de
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v9, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v9, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_2e5
    .catch Landroid/security/KeyStoreException; {:try_start_2de .. :try_end_2e5} :catch_2e8

    .line 578
    nop

    .line 582
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 583
    return-void

    .line 575
    .restart local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .restart local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    :catch_2e8
    move-exception v0

    .line 576
    .local v0, "e":Landroid/security/KeyStoreException;
    :try_start_2e9
    iget-object v9, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v10, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v9, v10}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 577
    new-instance v9, Ljava/security/KeyStoreException;

    move-object/from16 v10, v21

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v3    # "chainBytes":[B
    .end local v4    # "keyFormat":Ljava/lang/String;
    .end local v5    # "securitylevel":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v9
    :try_end_2f8
    .catch Landroid/security/KeyStoreException; {:try_start_2e9 .. :try_end_2f8} :catch_2f8

    .line 580
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .restart local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v3    # "chainBytes":[B
    .restart local v4    # "keyFormat":Ljava/lang/String;
    .restart local v5    # "securitylevel":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v16    # "targetDomain":I
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :catch_2f8
    move-exception v0

    goto :goto_2ff

    .end local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v4    # "keyFormat":Ljava/lang/String;
    .end local v16    # "targetDomain":I
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v8, "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :catch_2fa
    move-exception v0

    move-object v2, v7

    move-object v4, v8

    move/from16 v16, v11

    .line 581
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v4    # "keyFormat":Ljava/lang/String;
    .restart local v16    # "targetDomain":I
    :goto_2ff
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Failed to store private key"

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 560
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v4    # "keyFormat":Ljava/lang/String;
    .end local v16    # "targetDomain":I
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :catch_307
    move-exception v0

    move-object v2, v7

    move-object v4, v8

    move/from16 v16, v11

    .line 561
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v4    # "keyFormat":Ljava/lang/String;
    .restart local v16    # "targetDomain":I
    :goto_30c
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 460
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v4    # "keyFormat":Ljava/lang/String;
    .end local v16    # "targetDomain":I
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :cond_312
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Private key did not export any key material"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_31a
    move-object v4, v8

    move/from16 v16, v11

    .line 451
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .restart local v4    # "keyFormat":Ljava/lang/String;
    .restart local v16    # "targetDomain":I
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported private key export format: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    .end local v3    # "chainBytes":[B
    .end local v4    # "keyFormat":Ljava/lang/String;
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    :catch_33c
    move-exception v0

    .line 386
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to encode certificate #0"

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 363
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_345
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .local v0, "securitylevel":I
    .local v5, "flags":I
    :cond_34d
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported protection parameter class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 356
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyProtection;

    .line 357
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/KeyStoreParameter;

    .line 358
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 24
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 613
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_3e

    instance-of v0, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v0, :cond_d

    goto :goto_3e

    .line 614
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 615
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyProtection;

    .line 616
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_3e
    :goto_3e
    move-object v4, v3

    check-cast v4, Landroid/security/keystore/KeyProtection;

    .line 620
    .local v4, "params":Landroid/security/keystore/KeyProtection;
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v5

    .line 622
    .local v5, "targetDomain":I
    instance-of v0, v2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_6b

    .line 623
    move-object v0, v2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 624
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 626
    .local v0, "keyAliasInKeystore":Ljava/lang/String;
    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    .line 629
    .local v6, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v7, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v8, p1

    invoke-static {v8, v5, v7, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 632
    if-nez v4, :cond_63

    .line 636
    return-void

    .line 633
    :cond_63
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v7, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 639
    .end local v0    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v6    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_6b
    move-object/from16 v8, p1

    if-eqz v4, :cond_302

    .line 645
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "keyExportFormat":Ljava/lang/String;
    if-eqz v6, :cond_2fa

    .line 649
    const-string v0, "RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    .line 653
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 654
    .local v7, "keyMaterial":[B
    if-eqz v7, :cond_2d9

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 662
    .local v15, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    nop

    .line 664
    :try_start_8a
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 666
    .local v0, "keymasterAlgorithm":I
    const v9, 0x10000002

    invoke-static {v9, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const/16 v9, 0x80

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v9, :cond_15c

    .line 677
    nop

    .line 678
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v9

    .line 679
    .local v9, "keymasterImpliedDigest":I
    if-eq v9, v12, :cond_13f

    .line 685
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v16

    if-eqz v16, :cond_106

    .line 688
    nop

    .line 689
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v17, v16

    .line 690
    .local v17, "keymasterDigestsFromParams":[I
    move-object/from16 v10, v17

    .end local v17    # "keymasterDigestsFromParams":[I
    .local v10, "keymasterDigestsFromParams":[I
    array-length v11, v10

    if-ne v11, v14, :cond_c9

    aget v11, v10, v13

    if-ne v11, v9, :cond_c9

    goto :goto_106

    .line 692
    :cond_c9
    new-instance v11, Ljava/security/KeyStoreException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported digests specification: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 694
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 695
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " supported for HMAC key algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 697
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v11

    .line 700
    .end local v10    # "keymasterDigestsFromParams":[I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_106
    :goto_106
    invoke-static {v9}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v10

    .line 701
    .local v10, "outputBits":I
    if-eq v10, v12, :cond_122

    .line 706
    const v11, 0x20000005

    invoke-static {v11, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const v11, 0x30000008

    invoke-static {v11, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    nop

    .end local v9    # "keymasterImpliedDigest":I
    .end local v10    # "outputBits":I
    goto :goto_181

    .line 702
    .restart local v9    # "keymasterImpliedDigest":I
    .restart local v10    # "outputBits":I
    :cond_122
    new-instance v11, Ljava/security/ProviderException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 704
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v11

    .line 680
    .end local v10    # "outputBits":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_13f
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 682
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v10

    .line 713
    .end local v9    # "keymasterImpliedDigest":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_15c
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_181

    .line 714
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_168
    if-ge v11, v10, :cond_181

    aget-object v13, v9, v11

    .line 715
    .local v13, "digest":Ljava/lang/String;
    nop

    .line 717
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v12

    .line 715
    const v14, 0x20000005

    invoke-static {v14, v12}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    nop

    .end local v13    # "digest":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    const/4 v14, 0x1

    goto :goto_168

    .line 723
    :cond_181
    :goto_181
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v9

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v10, v15}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v9, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 730
    const/4 v9, 0x0

    .line 731
    .local v9, "indCpa":Z
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v10

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_1ab

    .line 732
    move-object v10, v3

    check-cast v10, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v10

    if-eqz v10, :cond_1a1

    .line 733
    const/4 v9, 0x1

    goto :goto_1ab

    .line 735
    :cond_1a1
    const v10, 0x70000007

    invoke-static {v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1ab
    :goto_1ab
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_1b1
    if-ge v13, v12, :cond_218

    aget-object v14, v10, v13

    .line 742
    .local v14, "blockMode":Ljava/lang/String;
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v17

    .line 743
    .local v18, "keymasterBlockMode":I
    if-eqz v9, :cond_1e3

    .line 744
    invoke-static/range {v18 .. v18}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_1c4

    goto :goto_1e3

    .line 746
    :cond_1c4
    new-instance v10, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". See KeyProtection documentation."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v10

    .line 752
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_1e3
    :goto_1e3
    const/16 v11, 0x20

    if-ne v0, v11, :cond_1fe

    move/from16 v19, v0

    move/from16 v0, v18

    .end local v18    # "keymasterBlockMode":I
    .local v0, "keymasterBlockMode":I
    .local v19, "keymasterAlgorithm":I
    if-ne v0, v11, :cond_1fa

    .line 754
    const/16 v11, 0x60

    const v2, 0x30000008

    invoke-static {v2, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    .line 752
    :cond_1fa
    const v2, 0x30000008

    goto :goto_205

    .end local v19    # "keymasterAlgorithm":I
    .local v0, "keymasterAlgorithm":I
    .restart local v18    # "keymasterBlockMode":I
    :cond_1fe
    move/from16 v19, v0

    move/from16 v0, v18

    const v2, 0x30000008

    .line 760
    .end local v18    # "keymasterBlockMode":I
    .local v0, "keymasterBlockMode":I
    .restart local v19    # "keymasterAlgorithm":I
    :goto_205
    const v11, 0x20000004

    invoke-static {v11, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    nop

    .end local v0    # "keymasterBlockMode":I
    .end local v14    # "blockMode":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v19

    const/4 v11, 0x1

    goto :goto_1b1

    .line 766
    .end local v19    # "keymasterAlgorithm":I
    .local v0, "keymasterAlgorithm":I
    :cond_218
    move/from16 v19, v0

    .end local v0    # "keymasterAlgorithm":I
    .restart local v19    # "keymasterAlgorithm":I
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2ca

    .line 770
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v13, 0x0

    :goto_227
    if-ge v13, v2, :cond_23d

    aget-object v10, v0, v13

    .line 771
    .local v10, "padding":Ljava/lang/String;
    const v11, 0x20000006

    .line 773
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v12

    .line 771
    invoke-static {v11, v12}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    nop

    .end local v10    # "padding":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_227

    .line 777
    :cond_23d
    invoke-static {v15, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 779
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_254

    .line 780
    const v0, 0x60000190

    .line 781
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    .line 780
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_254
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_268

    .line 785
    const v0, 0x60000191

    .line 787
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    .line 785
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_268
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_27c

    .line 791
    const v0, 0x60000192

    .line 793
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    .line 791
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_27c
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_291

    .line 797
    const v0, 0x30000195

    .line 799
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    .line 797
    invoke-static {v0, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_291
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_291} :catch_2d2
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_291} :catch_2d2

    .line 804
    .end local v9    # "indCpa":Z
    .end local v19    # "keymasterAlgorithm":I
    :cond_291
    nop

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "flags":I
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 808
    or-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_29e

    .line 807
    :cond_29d
    move v2, v0

    .line 811
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_29e
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v0

    if-eqz v0, :cond_2a6

    const/4 v14, 0x2

    goto :goto_2a7

    .line 812
    :cond_2a6
    const/4 v14, 0x1

    :goto_2a7
    nop

    .line 815
    .local v14, "securityLevel":I
    :try_start_2a8
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v14}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v9

    .line 818
    .local v9, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v10
    :try_end_2b2
    .catch Landroid/security/KeyStoreException; {:try_start_2a8 .. :try_end_2b2} :catch_2bf

    .line 820
    .local v10, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v11, 0x0

    move-object v12, v15

    move v13, v2

    move/from16 v16, v14

    .end local v14    # "securityLevel":I
    .local v16, "securityLevel":I
    move-object v14, v7

    :try_start_2b8
    invoke-virtual/range {v9 .. v14}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    :try_end_2bb
    .catch Landroid/security/KeyStoreException; {:try_start_2b8 .. :try_end_2bb} :catch_2bd

    .line 824
    nop

    .line 825
    .end local v9    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v10    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    return-void

    .line 822
    :catch_2bd
    move-exception v0

    goto :goto_2c2

    .end local v16    # "securityLevel":I
    .restart local v14    # "securityLevel":I
    :catch_2bf
    move-exception v0

    move/from16 v16, v14

    .line 823
    .end local v14    # "securityLevel":I
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v16    # "securityLevel":I
    :goto_2c2
    new-instance v9, Ljava/security/KeyStoreException;

    const-string v10, "Failed to import secret key."

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 767
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v2    # "flags":I
    .end local v16    # "securityLevel":I
    .local v9, "indCpa":Z
    .restart local v19    # "keymasterAlgorithm":I
    :cond_2ca
    :try_start_2ca
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Signature paddings not supported for symmetric keys"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v0
    :try_end_2d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ca .. :try_end_2d2} :catch_2d2
    .catch Ljava/lang/IllegalStateException; {:try_start_2ca .. :try_end_2d2} :catch_2d2

    .line 802
    .end local v9    # "indCpa":Z
    .end local v19    # "keymasterAlgorithm":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :catch_2d2
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 655
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    :cond_2d9
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    .end local v7    # "keyMaterial":[B
    :cond_2e1
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported secret key material export format: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_2fa
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    :cond_302
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 26
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Landroid/security/keystore/WrappedKeyEntry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 829
    move-object/from16 v1, p0

    const-string v2, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_19d

    .line 833
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 835
    .local v3, "maskingKey":[B
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 839
    .local v12, "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const/4 v0, 0x0

    aget-object v13, v4, v0

    .line 840
    .local v13, "algorithm":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 841
    const v5, 0x10000002

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    array-length v5, v4

    if-le v5, v6, :cond_43

    .line 851
    aget-object v5, v4, v6

    .line 852
    .local v5, "mode":Ljava/lang/String;
    const v7, 0x20000004

    .line 854
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v8

    .line 852
    invoke-static {v7, v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    .end local v5    # "mode":Ljava/lang/String;
    :cond_43
    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_59

    .line 859
    aget-object v5, v4, v7

    .line 860
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 861
    .local v5, "padding":I
    if-eq v5, v6, :cond_59

    .line 862
    const v8, 0x20000006

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    .end local v5    # "padding":I
    :cond_59
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/security/keystore/KeyGenParameterSpec;

    .line 870
    .local v14, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 871
    nop

    .line 872
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 873
    .local v5, "digest":I
    if-eqz v5, :cond_a2

    .line 874
    const v8, 0x20000005

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 881
    move v8, v7

    goto :goto_86

    .line 882
    :cond_85
    move v8, v6

    :goto_86
    nop

    .line 883
    .local v8, "security_level":I
    array-length v9, v4

    if-le v9, v7, :cond_a2

    aget-object v9, v4, v7

    .line 884
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_a2

    .line 885
    invoke-static {v13, v8}, Landroid/security/keystore2/KeymasterUtils;->isSupportTagRSAOAEPMGFDigest(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 886
    const v9, 0x200000cb

    invoke-static {v9, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v5    # "digest":I
    .end local v8    # "security_level":I
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v15

    .line 897
    .local v15, "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    const/4 v5, 0x0

    .line 899
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :try_start_ab
    iget-object v8, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v8, v15}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v8
    :try_end_b1
    .catch Landroid/security/KeyStoreException; {:try_start_ab .. :try_end_b1} :catch_160

    move-object v11, v8

    .line 903
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v11, "response":Landroid/system/keystore2/KeyEntryResponse;
    nop

    .line 905
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v16

    .line 907
    .local v16, "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    new-instance v5, Landroid/security/KeyStoreSecurityLevel;

    iget-object v8, v11, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v5, v8}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 909
    .local v5, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v8

    const-class v9, Landroid/hardware/biometrics/BiometricManager;

    .line 910
    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroid/hardware/biometrics/BiometricManager;

    .line 912
    .local v17, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    .line 914
    .local v10, "biometricSids":[J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v8

    .line 916
    .local v9, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    new-instance v8, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v8}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 917
    .local v8, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    iput v6, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 918
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    iput-wide v0, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 919
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    array-length v0, v10

    const/4 v1, 0x0

    :goto_e8
    if-ge v1, v0, :cond_109

    aget-wide v6, v10, v1

    .line 922
    .local v6, "sid":J
    new-instance v20, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct/range {v20 .. v20}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    move-object/from16 v21, v20

    .line 923
    .local v21, "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    move/from16 v20, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v21

    const/4 v3, 0x2

    .end local v3    # "maskingKey":[B
    .end local v21    # "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v0, "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v18, "maskingKey":[B
    iput v3, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 924
    iput-wide v6, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 925
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v0    # "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v6    # "sid":J
    add-int/lit8 v1, v1, 0x1

    move v7, v3

    move-object/from16 v3, v18

    move/from16 v0, v20

    goto :goto_e8

    .line 929
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_109
    move-object/from16 v18, v3

    .line 931
    .end local v3    # "maskingKey":[B
    .restart local v18    # "maskingKey":[B
    :try_start_10b
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 934
    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/system/keystore2/AuthenticatorSpec;
    :try_end_119
    .catch Landroid/security/KeyStoreException; {:try_start_10b .. :try_end_119} :catch_12e

    .line 929
    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v19, v8

    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v19, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    move-object v8, v0

    move-object/from16 v20, v9

    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .local v20, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    move-object v9, v1

    move-object v1, v10

    .end local v10    # "biometricSids":[J
    .local v1, "biometricSids":[J
    move-object v10, v12

    move-object/from16 v21, v11

    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v21, "response":Landroid/system/keystore2/KeyEntryResponse;
    move-object v11, v3

    :try_start_127
    invoke-virtual/range {v5 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_12a
    .catch Landroid/security/KeyStoreException; {:try_start_127 .. :try_end_12a} :catch_12c

    .line 944
    nop

    .line 945
    return-void

    .line 935
    :catch_12c
    move-exception v0

    goto :goto_136

    .end local v1    # "biometricSids":[J
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .restart local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v10    # "biometricSids":[J
    .restart local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_12e
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object v1, v10

    move-object/from16 v21, v11

    .line 936
    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v10    # "biometricSids":[J
    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v1    # "biometricSids":[J
    .restart local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :goto_136
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1a6

    .line 941
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 942
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 938
    :pswitch_158
    new-instance v2, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v3, "Could not import wrapped key"

    invoke-direct {v2, v3}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v1    # "biometricSids":[J
    .end local v16    # "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    .end local v17    # "bm":Landroid/hardware/biometrics/BiometricManager;
    .end local v18    # "maskingKey":[B
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .restart local v3    # "maskingKey":[B
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_160
    move-exception v0

    move-object/from16 v18, v3

    .line 901
    .end local v3    # "maskingKey":[B
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v18    # "maskingKey":[B
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 902
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 846
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .end local v14    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v15    # "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_17e
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not supported for wrapping. Only RSA wrapping keys are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    .end local v3    # "maskingKey":[B
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v12    # "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v13    # "algorithm":Ljava/lang/String;
    :cond_19d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1a6
    .packed-switch -0x64
        :pswitch_158
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "bytes"    # [B

    .line 225
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 226
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 228
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist toCertificates([B)Ljava/util/Collection;
    .registers 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 237
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 238
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 240
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_10
    move-exception v0

    .line 241
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1028
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1033
    if-eqz p1, :cond_c

    .line 1037
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1034
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1001
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_4
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_9
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1006
    goto :goto_12

    .line 1002
    :catch_a
    move-exception v1

    .line 1003
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_13

    .line 1007
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :goto_12
    return-void

    .line 1004
    .restart local v1    # "e":Landroid/security/KeyStoreException;
    :cond_13
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 205
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 206
    return-object v1

    .line 209
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 210
    .local v2, "encodedCert":[B
    if-eqz v2, :cond_13

    .line 211
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 214
    :cond_13
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v3, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 215
    if-eqz v2, :cond_1e

    .line 216
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 220
    :cond_1e
    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 1079
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1080
    return-object v0

    .line 1082
    :cond_4
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_18

    .line 1083
    const-string v1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-object v0

    .line 1088
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_1c} :catch_71

    .line 1092
    .local v1, "targetCertBytes":[B
    nop

    .line 1093
    if-nez v1, :cond_20

    .line 1094
    return-object v0

    .line 1097
    :cond_20
    const/4 v0, 0x0

    .line 1099
    .local v0, "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    :try_start_21
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1100
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v5, v5

    .line 1099
    invoke-virtual {v3, v4, v5, v6}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2
    :try_end_2e
    .catch Landroid/security/KeyStoreException; {:try_start_21 .. :try_end_2e} :catch_30

    move-object v0, v2

    .line 1105
    goto :goto_36

    .line 1103
    :catch_30
    move-exception v3

    .line 1104
    .local v3, "e":Landroid/security/KeyStoreException;
    const-string v4, "Failed to get list of keystore entries."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    .end local v3    # "e":Landroid/security/KeyStoreException;
    :goto_36
    const/4 v2, 0x0

    .line 1108
    .local v2, "caAlias":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_70

    aget-object v5, v0, v4

    .line 1109
    .local v5, "d":Landroid/system/keystore2/KeyDescriptor;
    iget-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v6

    .line 1110
    .local v6, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-nez v6, :cond_46

    .line 1111
    goto :goto_6d

    .line 1121
    :cond_46
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v7, :cond_59

    .line 1122
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1123
    iget-object v3, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object v3

    .line 1125
    :cond_59
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v7, :cond_6d

    if-nez v2, :cond_6d

    .line 1126
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1127
    iget-object v2, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 1108
    .end local v5    # "d":Landroid/system/keystore2/KeyDescriptor;
    .end local v6    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1131
    :cond_70
    return-object v2

    .line 1089
    .end local v0    # "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "targetCertBytes":[B
    .end local v2    # "caAlias":Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "While trying to get the alias for a certificate."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 169
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v2, :cond_e

    goto :goto_49

    .line 173
    :cond_e
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 174
    .local v2, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_19

    .line 175
    return-object v1

    .line 180
    :cond_19
    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 182
    .local v1, "caBytes":[B
    const/4 v3, 0x1

    if-eqz v1, :cond_43

    .line 183
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v4

    .line 185
    .local v4, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v5, [Ljava/security/cert/Certificate;

    .line 187
    .local v3, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 188
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v6, 0x1

    .line 189
    .local v6, "i":I
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 190
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_30

    .line 192
    .end local v4    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "i":I
    :cond_42
    goto :goto_45

    .line 193
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_43
    new-array v3, v3, [Ljava/security/cert/Certificate;

    .line 196
    .restart local v3    # "caList":[Ljava/security/cert/Certificate;
    :goto_45
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 198
    return-object v3

    .line 170
    .end local v1    # "caBytes":[B
    .end local v2    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_49
    :goto_49
    return-object v1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;

    .line 248
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 250
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 251
    return-object v1

    .line 254
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 255
    return-object v1

    .line 257
    :cond_13
    new-instance v1, Ljava/util/Date;

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0
    :try_end_8
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_8} :catch_1f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 115
    :catch_9
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 117
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Landroid/security/KeyStoreException;

    if-eqz v2, :cond_1e

    .line 118
    move-object v2, v1

    check-cast v2, Landroid/security/KeyStoreException;

    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1e

    .line 120
    const/4 v2, 0x0

    return-object v2

    .line 123
    :cond_1e
    throw v0

    .line 113
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1f
    move-exception v0

    .line 114
    .local v0, "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1064
    if-eqz p1, :cond_16

    .line 1067
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1072
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 1065
    .end local v0    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 1047
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1154
    if-nez p1, :cond_17

    .line 1158
    if-nez p2, :cond_e

    .line 1163
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1164
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1165
    return-void

    .line 1159
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1170
    const/4 v0, -0x1

    .line 1171
    .local v0, "namespace":I
    if-eqz p1, :cond_2c

    .line 1172
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_f

    .line 1173
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result v0

    goto :goto_2c

    .line 1175
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1180
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1181
    return-void
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 972
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 977
    if-eqz p2, :cond_29

    .line 983
    :try_start_8
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_c} :catch_22

    .line 986
    .local v0, "encoded":[B
    nop

    .line 989
    :try_start_d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_17
    .catch Landroid/security/KeyStoreException; {:try_start_d .. :try_end_17} :catch_19

    .line 994
    nop

    .line 995
    return-void

    .line 992
    :catch_19
    move-exception v1

    .line 993
    .local v1, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 984
    .end local v0    # "encoded":[B
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :catch_22
    move-exception v0

    .line 985
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 978
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_31
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1186
    if-eqz p2, :cond_5b

    .line 1190
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_14

    .line 1191
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1197
    .local v0, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1199
    return-void

    .line 1202
    .end local v0    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_14
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_27

    .line 1203
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1204
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1205
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_41

    :cond_27
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_36

    .line 1206
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1207
    .local v0, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1208
    .end local v0    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_41

    :cond_36
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_42

    .line 1209
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    .line 1210
    .local v0, "wke":Landroid/security/keystore/WrappedKeyEntry;
    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1211
    .end local v0    # "wke":Landroid/security/keystore/WrappedKeyEntry;
    nop

    .line 1216
    :goto_41
    return-void

    .line 1212
    :cond_42
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry must be a PrivateKeyEntry, SecretKeyEntry, WrappedKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_5b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 263
    if-eqz p3, :cond_e

    array-length v0, p3

    if-gtz v0, :cond_6

    goto :goto_e

    .line 264
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_e
    :goto_e
    instance-of v0, p2, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 268
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, p4, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_24

    .line 269
    :cond_1a
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_25

    .line 270
    move-object v0, p2

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 274
    :goto_24
    return-void

    .line 272
    :cond_25
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 950
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 1042
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .registers 3
    .param p1, "keystore"    # Landroid/security/KeyStore2;

    .line 1141
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1143
    return-void
.end method
