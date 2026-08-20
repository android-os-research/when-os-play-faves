.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field public mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mRandom:Ljava/util/Random;

.field public mUserCert:Ljava/security/cert/X509Certificate;

.field public mUserKey:Ljava/security/PrivateKey;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 123
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 334
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 335
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 336
    iget-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static convertDerToPem([B)[B
    .registers 6

    const-string v0, "CertificateUtil"

    const-string v1, "Convert DER to PEM"

    .line 743
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 746
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 747
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 748
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    const-string v4, "CERTIFICATE"

    invoke-direct {v2, v4, p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 749
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->close()V

    .line 750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception converting DER to PEM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertStoreTypeToUid(I)I
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    goto :goto_a

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_a

    const/16 v0, 0x3f2

    :cond_a
    :goto_a
    return v0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 721
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "Could not convert certificate."

    const-string v1, "CertificateUtil"

    if-eqz p0, :cond_38

    .line 728
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    .line 730
    :try_start_12
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_16} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a certificate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 734
    :catch_31
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 732
    :catch_35
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toCertificates([B)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 711
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final extractPkcs12([BLjava/lang/String;I)Z
    .registers 9

    const-string v0, "CertificateUtil"

    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "PKCS12"

    .line 551
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 552
    new-instance v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 553
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 555
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    .line 556
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_2d

    return v1

    .line 559
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 560
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 561
    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 562
    invoke-virtual {v2, p2, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p2

    .line 565
    instance-of v4, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v4, :cond_2d

    .line 566
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z

    move-result p0

    return p0

    :cond_4e
    const-string p2, "Skipping non-key entry"

    .line 572
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_2d

    :catch_54
    move-exception p0

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extractPkcs12(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v1
.end method

.method public getAllUsersId()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object p0

    .line 692
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 693
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 702
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    throw p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 672
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getRandomInt()I
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    const/4 v5, -0x2

    const-string v6, "PKCS12"

    const/4 v7, -0x3

    const-string v8, ".crt"

    const/4 v9, 0x0

    const-string v10, "CERT"

    if-nez v1, :cond_33

    if-nez v3, :cond_29

    .line 352
    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, ""

    .line 353
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2f

    :cond_26
    move v5, v9

    :cond_27
    :goto_27
    move-object v1, v10

    goto :goto_5e

    .line 360
    :cond_29
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    :goto_2f
    move-object v1, v6

    goto :goto_5d

    :cond_31
    move v5, v7

    goto :goto_27

    .line 367
    :cond_33
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_56

    .line 368
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_56

    :cond_40
    const-string v5, ".p12"

    .line 371
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 372
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 373
    :cond_4e
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_54
    move v5, v7

    goto :goto_5e

    .line 369
    :cond_56
    :goto_56
    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v5, v9

    :goto_5e
    if-nez v5, :cond_19c

    .line 382
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    and-int/lit8 v3, p5, 0x4

    const/4 v4, 0x1

    const-string/jumbo v6, "installAsUser(): "

    const/4 v7, 0x0

    const-string v15, "CertificateUtil"

    if-eqz v3, :cond_cc

    .line 387
    :try_start_72
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_7c

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    move-object v12, v3

    goto :goto_7d

    :cond_7c
    move-object v12, v7

    .line 388
    :goto_7d
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_8b

    new-array v11, v4, [Ljava/security/cert/Certificate;

    aput-object v3, v11, v9

    invoke-static {v11}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v3

    move-object v13, v3

    goto :goto_8c

    :cond_8b
    move-object v13, v7

    .line 389
    :goto_8c
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    if-eqz v3, :cond_9e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 390
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v3

    move-object v14, v3

    goto :goto_9f

    :cond_9e
    move-object v14, v7

    :goto_9f
    const/4 v3, 0x4

    .line 391
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v16
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_a4} :catch_c8
    .catchall {:try_start_72 .. :try_end_a4} :catchall_c4

    move-object v11, v2

    move-object v3, v15

    move-object/from16 v15, p3

    .line 386
    :try_start_a8
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put([B[B[BLjava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_af

    const/4 v5, -0x5

    .line 397
    :cond_af
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Installation result on VPN/Apps keystore: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :catchall_c4
    move-exception v0

    move-object v3, v15

    goto/16 :goto_171

    :catch_c8
    move-exception v0

    move-object v3, v15

    goto/16 :goto_155

    :cond_cc
    move-object v3, v15

    :goto_cd
    and-int/lit8 v11, p5, 0x2

    if-eqz v11, :cond_124

    .line 402
    iget-object v11, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v11, :cond_db

    invoke-interface {v11}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v11

    move-object v12, v11

    goto :goto_dc

    :cond_db
    move-object v12, v7

    .line 403
    :goto_dc
    iget-object v11, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v11, :cond_ea

    new-array v13, v4, [Ljava/security/cert/Certificate;

    aput-object v11, v13, v9

    invoke-static {v13}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9

    move-object v13, v9

    goto :goto_eb

    :cond_ea
    move-object v13, v7

    .line 404
    :goto_eb
    iget-object v9, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    if-eqz v9, :cond_fb

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_fb

    .line 405
    iget-object v7, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v7

    :cond_fb
    move-object v14, v7

    const/4 v7, 0x2

    .line 406
    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v16

    move-object v11, v2

    move-object/from16 v15, p3

    .line 401
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put([B[B[BLjava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_10b

    const/4 v5, -0x6

    .line 412
    :cond_10b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installation result on Wi-Fi keystore: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    :catchall_120
    move-exception v0

    goto :goto_171

    :catch_122
    move-exception v0

    goto :goto_155

    :cond_124
    :goto_124
    and-int/lit8 v4, p5, 0x1

    const/4 v7, -0x4

    if-eqz v4, :cond_187

    move-object/from16 v4, p3

    .line 416
    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->installCaCertsToDefaultKeystore(Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_132

    move v5, v7

    .line 419
    :cond_132
    iget-object v4, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_143

    .line 420
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_142

    .line 421
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_143

    :cond_142
    move v5, v7

    .line 424
    :cond_143
    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_187

    .line 425
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    .line 426
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_151} :catch_122
    .catchall {:try_start_a8 .. :try_end_151} :catchall_120

    if-eqz v0, :cond_187

    :cond_153
    move v5, v7

    goto :goto_187

    .line 431
    :goto_155
    :try_start_155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_155 .. :try_end_16b} :catchall_120

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_18c

    :goto_171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 436
    throw v0

    .line 433
    :cond_187
    :goto_187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_18c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    :cond_19c
    return v5
.end method

.method public final installCaCertsToDefaultKeystore(Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;Ljava/lang/String;)Z
    .registers 12

    .line 442
    iget-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    return v0

    .line 447
    :cond_a
    iget-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :cond_11
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Error converting certificate to PEM: "

    const/4 v4, 0x0

    const-string v5, "CertificateUtil"

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 448
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :try_start_31
    new-array v7, v0, [Ljava/security/cert/Certificate;

    aput-object v2, v7, v6

    .line 451
    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception v2

    .line 453
    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    and-int/lit8 v1, v1, 0x0

    :goto_40
    if-eqz v4, :cond_11

    .line 457
    invoke-virtual {p1, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    move v6, v0

    :cond_49
    and-int/2addr v1, v6

    goto :goto_11

    .line 463
    :cond_4b
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_51
    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 464
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    :try_start_6b
    new-array v2, v0, [Ljava/security/cert/Certificate;

    aput-object p2, v2, v6

    .line 467
    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p2
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_7b

    :catch_74
    move-exception p2

    .line 469
    invoke-static {v5, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    and-int/lit8 v1, v1, 0x0

    move-object p2, v4

    :goto_7b
    if-eqz p2, :cond_51

    .line 473
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_85

    move p2, v0

    goto :goto_86

    :cond_85
    move p2, v6

    :goto_86
    and-int/2addr p2, v1

    move v1, p2

    goto :goto_51

    .line 478
    :cond_89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CaCerts put state for default keystore: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "certificate_policy"

    .line 584
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 583
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_bd

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 586
    :try_start_e
    invoke-interface {v0, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 587
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 589
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    array-length v4, v2

    move v5, v1

    :goto_20
    if-ge v5, v4, :cond_31

    aget-object v6, v2, v5

    .line 591
    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateInfo;

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 593
    :cond_31
    invoke-interface {v0, v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    const-string v3, "CertificateUtil"

    const-string v4, "certificate failed during validation"

    .line 595
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "installer_module"

    .line 597
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-interface {v0, v3, v2, v1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_49} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_49} :catch_4b
    .catchall {:try_start_e .. :try_end_49} :catchall_bd

    .line 598
    monitor-exit p0

    return v1

    :catch_4b
    :try_start_4b
    const-string p2, "CertificateUtil"

    const-string v0, "Certificate policy not found"

    .line 604
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_53
    const-string p2, "CertificateUtil"

    const-string v0, "Failed talking to certificate policy"

    .line 602
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_5a
    :goto_5a
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 608
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 610
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p1

    const-string p2, "CertificateUtil"

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# certs extracted = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 613
    array-length v0, p1

    :goto_8c
    if-ge v1, v0, :cond_9e

    aget-object v2, p1, v1

    .line 614
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 615
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 616
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_9e
    const-string p1, "CertificateUtil"

    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# ca certs extracted = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_4b .. :try_end_ba} :catchall_bd

    .line 620
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_bd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "2.5.29.19"

    .line 529
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_a

    return p0

    .line 533
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 534
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object p1

    .line 536
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 537
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2c

    :catch_2c
    return p0
.end method

.method public isGuestUser(I)Z
    .registers 2

    .line 676
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_12

    .line 677
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 678
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final parseCert([BI)Z
    .registers 8

    const-string v0, "CertificateUtil"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "X.509"

    .line 487
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 488
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 489
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const-string v2, "certificate_policy"

    .line 493
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 492
    invoke-static {v2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v2
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_1e} :catch_69

    if-eqz v2, :cond_4d

    .line 495
    :try_start_20
    invoke-interface {v2, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 496
    new-instance v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 498
    invoke-interface {v2, v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4d

    const-string v4, "certificate failed during validation"

    .line 500
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "installer_module"

    .line 502
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-interface {v2, v4, v3, v1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_41} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_41} :catch_42
    .catch Ljava/security/cert/CertificateException; {:try_start_20 .. :try_end_41} :catch_69

    return v1

    :catch_42
    :try_start_42
    const-string p2, "Certificate policy not found"

    .line 509
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :catch_48
    const-string p2, "Failed talking to certificate policy"

    .line 507
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_4d
    :goto_4d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string/jumbo p2, "got a CA cert"

    .line 512
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_5f
    const-string/jumbo p2, "got a user cert"

    .line 516
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_67
    .catch Ljava/security/cert/CertificateException; {:try_start_42 .. :try_end_67} :catch_69

    :goto_67
    const/4 v1, 0x1

    goto :goto_7f

    :catch_69
    move-exception p0

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseCert(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    return v1
.end method

.method public sendIntentToSettings(IZ)V
    .registers 6

    if-eqz p2, :cond_1f

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    .line 643
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {p0, p2, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1f
    return-void
.end method
