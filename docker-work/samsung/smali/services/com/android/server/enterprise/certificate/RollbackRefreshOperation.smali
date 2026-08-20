.class public Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field public static final ALIAS_SEPARATOR:Ljava/lang/String; = "_#_"

.field public static final CA_CERT_CERT_ENTRY:Ljava/lang/String; = "CACERT_CE_"

.field public static final CA_CERT_KEY_ENTRY:Ljava/lang/String; = "CACERT_KE_"

.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field public static final KEYSTORE_ADD_OPERATION:I = 0x0

.field public static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field public static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field public final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field public mContext:Landroid/content/Context;

.field public final mKeyStoreLock:Ljava/lang/Object;

.field public mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mOperation:I

.field public mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPriority:I

.field public mUserId:I

.field public mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public static synthetic $r8$lambda$1Y84xOmbQ0vMVoeraESnu3OXe70(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$refreshSystemKeyStoreAsUser$3(ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-W2kMlFK2mRE8FznhQ1Hi_ItNQ(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$getUsersKeystoreUnlocked$4(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NXvlHyzvWHrZUK0eIZbJ31HY65g(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$execute$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cO-SmAqZbzs-cV9sN-lFpTPQ9jI(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$rollbackSystemKeyStoreAsUser$2(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZlwXtrHgHYUS7bwVAZLhM6UPgk(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$execute$1([Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyStoreLock(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    const/16 v0, 0xa

    .line 81
    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    .line 82
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 p1, 0x2

    .line 85
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 86
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object p1
.end method

.method private synthetic lambda$execute$1([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_19

    .line 158
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_19

    .line 152
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_19

    .line 155
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    :goto_19
    return-void
.end method

.method private synthetic lambda$getUsersKeystoreUnlocked$4(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 915
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 916
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 917
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 919
    :cond_22
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2c
    return-void
.end method

.method private synthetic lambda$refreshSystemKeyStoreAsUser$3(ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v12, ") "

    const-string/jumbo v13, "refreshSystemKeyStoreAsUser("

    const-string/jumbo v14, "refreshSystemKeyStoreAsUser "

    const-string v15, "RollbackRefreshOperation"

    .line 366
    :try_start_14
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v1, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v16
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_179
    .catch Ljava/lang/AssertionError; {:try_start_14 .. :try_end_1f} :catch_15f
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1f} :catch_145

    .line 369
    :try_start_1f
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_12d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_119
    .catch Ljava/security/cert/CertificateException; {:try_start_1f .. :try_end_23} :catch_105
    .catchall {:try_start_1f .. :try_end_23} :catchall_103

    if-nez v1, :cond_29

    .line 442
    :try_start_25
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_179
    .catch Ljava/lang/AssertionError; {:try_start_25 .. :try_end_28} :catch_15f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_145

    return-void

    .line 375
    :cond_29
    :try_start_29
    invoke-interface {v1}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v2

    .line 376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    const/4 v4, 0x1

    .line 379
    invoke-interface {v1, v3, v4}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v4

    if-eqz v4, :cond_31

    .line 381
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    .line 382
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_52

    .line 383
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v5

    if-nez v5, :cond_52

    .line 385
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v1, v3}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 389
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 399
    :cond_76
    invoke-interface {v1}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v2

    .line 400
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 401
    invoke-interface {v1, v3, v7}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 403
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    .line 404
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_99
    :goto_99
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_99

    .line 405
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v6

    if-nez v6, :cond_99

    .line 407
    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 414
    :cond_b4
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, v11, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    new-instance v6, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v18, v6

    move/from16 v6, p1

    move v11, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation-IA;)V

    new-array v1, v11, [Ljava/lang/Void;

    move-object/from16 v2, v18

    .line 422
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    invoke-virtual {v1, v2, v9, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 427
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, v10, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 429
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "userRemovedList"

    .line 430
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_fe} :catch_12d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_fe} :catch_119
    .catch Ljava/security/cert/CertificateException; {:try_start_29 .. :try_end_fe} :catch_105
    .catchall {:try_start_29 .. :try_end_fe} :catchall_103

    .line 442
    :goto_fe
    :try_start_fe
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_fe .. :try_end_101} :catch_179
    .catch Ljava/lang/AssertionError; {:try_start_fe .. :try_end_101} :catch_15f
    .catch Ljava/lang/RuntimeException; {:try_start_fe .. :try_end_101} :catch_145

    goto/16 :goto_18c

    :catchall_103
    move-exception v0

    goto :goto_141

    :catch_105
    move-exception v0

    .line 439
    :try_start_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :catch_119
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :catch_12d
    move-exception v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_106 .. :try_end_140} :catchall_103

    goto :goto_fe

    .line 442
    :goto_141
    :try_start_141
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 443
    throw v0
    :try_end_145
    .catch Ljava/lang/InterruptedException; {:try_start_141 .. :try_end_145} :catch_179
    .catch Ljava/lang/AssertionError; {:try_start_141 .. :try_end_145} :catch_15f
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_145} :catch_145

    :catch_145
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    :catch_15f
    move-exception v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    :catch_179
    move-exception v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18c
    return-void
.end method

.method private synthetic lambda$rollbackSystemKeyStoreAsUser$2(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p5

    move-object/from16 v1, p6

    const-string v12, ") "

    const-string/jumbo v13, "rollbackSystemKeyStoreAsUser("

    const-string/jumbo v14, "rollbackSystemKeyStoreAsUser "

    const-string v15, "RollbackRefreshOperation"

    .line 210
    :try_start_18
    iget-object v2, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v16
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_23} :catch_1b1
    .catch Ljava/lang/AssertionError; {:try_start_18 .. :try_end_23} :catch_196
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_23} :catch_178

    .line 213
    :try_start_23
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_157
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_141
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_27} :catch_12b
    .catchall {:try_start_23 .. :try_end_27} :catchall_127

    if-nez v2, :cond_2d

    .line 283
    :try_start_29
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_1b1
    .catch Ljava/lang/AssertionError; {:try_start_29 .. :try_end_2c} :catch_196
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_178

    return-void

    .line 219
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    .line 221
    invoke-interface {v2, v6, v7}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v7

    if-eqz v7, :cond_8c

    .line 223
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    .line 224
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_81

    move-object/from16 v17, v4

    .line 225
    iget-object v4, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v7

    const/4 v7, 0x2

    invoke-virtual {v4, v2, v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 229
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 231
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 233
    :cond_7d
    invoke-interface {v10, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_81
    move-object/from16 v17, v4

    move-object/from16 v19, v7

    :cond_85
    :goto_85
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    goto :goto_51

    :cond_8c
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto :goto_36

    .line 239
    :cond_95
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    invoke-interface {v9, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_99

    .line 244
    :cond_a9
    iget-object v2, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 245
    invoke-virtual {v2, v11, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b7
    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 248
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_b7

    .line 249
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 253
    invoke-interface {v11, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 260
    :cond_e4
    iget-object v2, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, v1, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 263
    new-instance v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_eb} :catch_157
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_eb} :catch_141
    .catch Ljava/security/cert/CertificateException; {:try_start_2d .. :try_end_eb} :catch_12b
    .catchall {:try_start_2d .. :try_end_eb} :catchall_127

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v17

    :try_start_fb
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 265
    invoke-virtual {v12, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    invoke-virtual {v1, v2, v9, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 270
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, v10, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 272
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "userRemovedList"

    invoke-virtual {v0, v1, v11, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_11c} :catch_125
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_11c} :catch_123
    .catch Ljava/security/cert/CertificateException; {:try_start_fb .. :try_end_11c} :catch_121
    .catchall {:try_start_fb .. :try_end_11c} :catchall_16d

    .line 283
    :goto_11c
    :try_start_11c
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_11f
    .catch Ljava/lang/InterruptedException; {:try_start_11c .. :try_end_11f} :catch_1b1
    .catch Ljava/lang/AssertionError; {:try_start_11c .. :try_end_11f} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_11c .. :try_end_11f} :catch_172

    goto/16 :goto_1c4

    :catch_121
    move-exception v0

    goto :goto_12e

    :catch_123
    move-exception v0

    goto :goto_144

    :catch_125
    move-exception v0

    goto :goto_15a

    :catchall_127
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_16e

    :catch_12b
    move-exception v0

    move-object/from16 v18, v12

    .line 281
    :goto_12e
    :try_start_12e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    :catch_141
    move-exception v0

    move-object/from16 v18, v12

    .line 279
    :goto_144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    :catch_157
    move-exception v0

    move-object/from16 v18, v12

    .line 276
    :goto_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catchall {:try_start_12e .. :try_end_16c} :catchall_16d

    goto :goto_11c

    :catchall_16d
    move-exception v0

    .line 283
    :goto_16e
    :try_start_16e
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 284
    throw v0
    :try_end_172
    .catch Ljava/lang/InterruptedException; {:try_start_16e .. :try_end_172} :catch_1b1
    .catch Ljava/lang/AssertionError; {:try_start_16e .. :try_end_172} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_172} :catch_172

    :catch_172
    move-exception v0

    goto :goto_17b

    :catch_174
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_198

    :catch_178
    move-exception v0

    move-object/from16 v18, v12

    .line 294
    :goto_17b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c4

    :catch_196
    move-exception v0

    move-object v2, v12

    .line 290
    :goto_198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c4

    :catch_1b1
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c4
    return-void
.end method

.method public static splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-string v0, "CACERT_CE_"

    const-string v1, "CACERT_KE_"

    const-string v2, "CACERT_"

    const-string v3, "USRCERT_"

    const-string v4, "USRPKEY_"

    .line 566
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2f

    .line 568
    aget-object v3, v0, v2

    .line 569
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 570
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public execute(II)V
    .registers 7

    .line 116
    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    .line 117
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 119
    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    .line 127
    :cond_12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 129
    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v1, :cond_23

    move-object p2, v0

    goto :goto_3d

    .line 132
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 133
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v2, v3, :cond_27

    .line 134
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 138
    :cond_3d
    :goto_3d
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 149
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 168
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_54

    :cond_6e
    return-void
.end method

.method public final executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, 0x4

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 92
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x2

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 98
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    goto :goto_1f

    :cond_37
    return-void
.end method

.method public final executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, 0x4

    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x2

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 110
    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 111
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    goto :goto_1f

    :cond_37
    return-void
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 176
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    const/4 p2, -0x1

    goto :goto_7

    :cond_5
    const/16 p2, 0x3f2

    .line 527
    :goto_7
    invoke-virtual {p4, p1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 529
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 531
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 532
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_7f

    aget-object v4, v0, v3

    .line 533
    invoke-virtual {p4, v4, p1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v5

    if-nez v5, :cond_22

    return-object v1

    .line 537
    :cond_22
    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    move-result-object v5

    .line 538
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    return-object v1

    .line 542
    :cond_2d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_41

    goto :goto_32

    .line 546
    :cond_41
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v9, 0x3

    invoke-virtual {v8, v7, v9, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v8

    if-nez v8, :cond_79

    const-string v8, "CACERT_"

    .line 550
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 551
    invoke-virtual {p4, v4, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isCertificateEntry(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5b

    const-string v8, "CACERT_CE_"

    goto :goto_5f

    :cond_5b
    const-string v8, "CACERT_KE_"

    goto :goto_5f

    :cond_5e
    move-object v8, p1

    .line 557
    :goto_5f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_#_"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_7f
    return-object v1
.end method

.method public final getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .registers 5

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_26

    .line 906
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 908
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return-object p0

    .line 914
    :cond_26
    :goto_26
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Integer;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public hasPendingActionForUser(I)Z
    .registers 2

    .line 927
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public initPendingActionList()V
    .registers 4

    .line 935
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 937
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 938
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public final isNativeKeyStoreUnlockedAsUser(I)Z
    .registers 4

    const/4 p0, 0x0

    .line 946
    :try_start_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 947
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object p1

    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;
    :try_end_b
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_b} :catch_f

    if-eq p1, v0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2a

    :catch_f
    move-exception p1

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keystore State Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackRefreshOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return p0
.end method

.method public final pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_26

    .line 184
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, v3}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 185
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    return-object p1
.end method

.method public final refreshNativeKeyStore(I)V
    .registers 3

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    return-void
.end method

.method public final refreshNativeKeyStoreAsUser(II)V
    .registers 14

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    move v3, p2

    goto :goto_11

    :cond_f
    const/16 v3, 0x3f2

    .line 485
    :goto_11
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 486
    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v1

    .line 489
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v4

    if-eq p1, v2, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_21

    .line 492
    :try_start_1f
    monitor-exit v4

    return-void

    .line 495
    :cond_21
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    const-string v5, "CACERT_"

    .line 499
    invoke-virtual {p0, v5, p1, p2, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v5

    .line 498
    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v5, "USRCERT_"

    .line 504
    invoke-virtual {p0, v5, p1, p2, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v5

    .line 503
    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 509
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 511
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_69

    .line 513
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 516
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v6, 0x1

    .line 517
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation-IA;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void

    :catchall_69
    move-exception p0

    .line 511
    :try_start_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final refreshSystemKeyStoreAsUser(I)V
    .registers 10

    .line 358
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 360
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 362
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    .line 363
    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v7

    .line 364
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeUserIdFromPendingList(I)Z
    .registers 2

    .line 931
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final rollbackNativeKeyStore(I)V
    .registers 3

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    return-void
.end method

.method public final rollbackNativeKeyStoreAsUser(II)V
    .registers 15

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    move v2, p2

    goto :goto_11

    :cond_f
    const/16 v2, 0x3f2

    .line 321
    :goto_11
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 322
    invoke-virtual {v3, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v1

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 331
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_29

    .line 333
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v8, 0x3

    invoke-virtual {v7, v6, v8, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 335
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 340
    :cond_59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 345
    :cond_6d
    new-instance v11, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation-IA;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v4

    invoke-virtual {v11, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 353
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void
.end method

.method public final rollbackSystemKeyStoreAsUser(I)V
    .registers 12

    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 200
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 202
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "userRemovedList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 205
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final selectNativeKeystoreUid(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_7

    const-string/jumbo p0, "nativeRemovedList_wifi"

    goto :goto_f

    :cond_7
    const/4 p0, 0x4

    if-ne p1, p0, :cond_e

    const-string/jumbo p0, "nativeRemovedList"

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method
