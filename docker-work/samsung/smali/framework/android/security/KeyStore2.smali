.class public Landroid/security/KeyStore2;
.super Ljava/lang/Object;
.source "KeyStore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore2$CheckedRemoteRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEYSTORE2_SERVICE_NAME:Ljava/lang/String; = "android.system.keystore2.IKeystoreService/default"

.field private static final blacklist KEYSTORE_ENGINE_GRANT_ALIAS_PREFIX:Ljava/lang/String; = "ks2_keystore-engine_grant_id:0x"

.field static final blacklist KEYSTORE_OPERATION_CREATION_MAY_FAIL:J = 0xa206cc8L

.field private static final blacklist RECOVERY_GRACE_PERIOD_MS:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStore"


# instance fields
.field private blacklist mBinder:Landroid/system/keystore2/IKeystoreService;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    .line 143
    return-void
.end method

.method private blacklist getCertificates(Landroid/system/keystore2/KeyDescriptor;)Ljava/util/List;
    .registers 6
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 426
    const-string v0, "KeyStore"

    iget-object v1, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_71

    .line 429
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    .line 430
    .local v1, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-eqz v1, :cond_3a

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v2, :cond_3a

    .line 431
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v2, :cond_2b

    .line 432
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 433
    :cond_2b
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v2, :cond_52

    .line 434
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v2}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 437
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AuditLog] No certificate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/security/KeyStoreException; {:try_start_12 .. :try_end_52} :catch_53

    .line 443
    .end local v1    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_52
    goto :goto_71

    .line 439
    :catch_53
    move-exception v1

    .line 440
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_71

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AuditLog] Unable to get certificate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_71
    :goto_71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/security/KeyStore2;
    .registers 1

    .line 146
    new-instance v0, Landroid/security/KeyStore2;

    invoke-direct {v0}, Landroid/security/KeyStore2;-><init>()V

    return-object v0
.end method

.method static blacklist getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;
    .registers 4
    .param p0, "errorCode"    # I
    .param p1, "serviceErrorMessage"    # Ljava/lang/String;

    .line 375
    if-lez p0, :cond_4e

    .line 377
    sparse-switch p0, :sswitch_data_64

    .line 404
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 401
    :sswitch_f
    new-instance v0, Landroid/security/KeyStoreException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;I)V

    return-object v0

    .line 395
    :sswitch_16
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 392
    :sswitch_1e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 390
    :sswitch_26
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 387
    :sswitch_2e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 385
    :sswitch_36
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 382
    :sswitch_3e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 379
    :sswitch_46
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 409
    :cond_4e
    packed-switch p0, :pswitch_data_86

    .line 417
    new-instance v0, Landroid/security/KeyStoreException;

    .line 418
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    return-object v0

    .line 413
    :pswitch_5b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x2 -> :sswitch_46
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_36
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_26
        0x8 -> :sswitch_1e
        0x11 -> :sswitch_16
        0x16 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_86
    .packed-switch -0x10
        :pswitch_5b
    .end packed-switch
.end method

.method private declared-synchronized blacklist getService(Z)Landroid/system/keystore2/IKeystoreService;
    .registers 3
    .param p1, "retryLookup"    # Z

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1a

    .line 151
    :cond_7
    const-string v0, "android.system.keystore2.IKeystoreService/default"

    .line 152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/system/keystore2/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    .line 153
    invoke-interface {v0}, Landroid/system/keystore2/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 155
    :cond_1a
    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 149
    .end local p0    # "this":Landroid/security/KeyStore2;
    .end local p1    # "retryLookup":Z
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/KeyStore2$CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 114
    .local p1, "request":Landroid/security/KeyStore2$CheckedRemoteRequest;, "Landroid/security/KeyStore2$CheckedRemoteRequest<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    .line 115
    .local v0, "service":Landroid/system/keystore2/IKeystoreService;
    const/4 v1, 0x1

    .line 118
    .local v1, "firstTry":Z
    :goto_6
    :try_start_6
    invoke-interface {p1, v0}, Landroid/security/KeyStore2$CheckedRemoteRequest;->execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_a} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v2

    .line 121
    :catch_b
    move-exception v2

    .line 122
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    if-eqz v1, :cond_26

    .line 123
    const-string v4, "Looks like we may have lost connection to the Keystore daemon."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v4, "Retrying after giving Keystore 50ms to recover."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->interruptedPreservingSleep(J)V

    .line 128
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    .line 134
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_6

    .line 131
    .restart local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    const-string v4, "Cannot connect to Keystore daemon."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v3, Landroid/security/KeyStoreException;

    const/4 v4, 0x4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v6, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 119
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v2

    .line 120
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v3

    throw v3
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .registers 8
    .param p0, "millis"    # J

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "wasInterrupted":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 356
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    .line 359
    .local v2, "target":J
    :goto_a
    :try_start_a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_13} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_14

    .line 360
    goto :goto_16

    .line 363
    :catch_14
    move-exception v4

    .line 366
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 369
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_16
    if-eqz v0, :cond_1f

    .line 370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 372
    :cond_1f
    return-void

    .line 361
    :catch_20
    move-exception v4

    .line 362
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 367
    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_a
.end method

.method public static blacklist keystoreEngineGrantString2KeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4
    .param p0, "grantString"    # Ljava/lang/String;

    .line 207
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 208
    .local v0, "key":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 209
    nop

    .line 210
    const-string/jumbo v1, "ks2_keystore-engine_grant_id:0x"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 211
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 212
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 213
    return-object v0
.end method

.method static synthetic blacklist lambda$delete$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 3
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$deleteKey$8(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 3
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 334
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic blacklist lambda$deleteKey$9(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 3
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getKeyEntry$4(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSecurityLevel$5(ILandroid/system/keystore2/IKeystoreService;)Landroid/security/KeyStoreSecurityLevel;
    .registers 4
    .param p0, "securityLevel"    # I
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/security/KeyStoreSecurityLevel;

    .line 276
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 275
    return-object v0
.end method

.method static synthetic blacklist lambda$grant$2(Landroid/system/keystore2/KeyDescriptor;IILandroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "granteeUid"    # I
    .param p2, "accessVector"    # I
    .param p3, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$list$1(IJLandroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p0, "domain"    # I
    .param p1, "namespace"    # J
    .param p3, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$ungrant$3(Landroid/system/keystore2/KeyDescriptor;ILandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 4
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "granteeUid"    # I
    .param p2, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-interface {p2, p0, p1}, Landroid/system/keystore2/IKeystoreService;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V

    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$updateSubcomponents$6(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 5
    .param p0, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "publicCert"    # [B
    .param p2, "publicCertChain"    # [B
    .param p3, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 300
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic blacklist lambda$updateSubcomponents$7(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 5
    .param p0, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "publicCert"    # [B
    .param p2, "publicCertChain"    # [B
    .param p3, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist makeKeystoreEngineGrantString(J)Ljava/lang/String;
    .registers 5
    .param p0, "grantId"    # J

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "ks2_keystore-engine_grant_id:0x"

    aput-object v2, v0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist delete(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 159
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 5
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x2

    const-string v1, "KeyStore"

    invoke-static {p1, v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    .line 330
    .local v0, "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-direct {p0, p1}, Landroid/security/KeyStore2;->getCertificates(Landroid/system/keystore2/KeyDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setX509Certificates(Ljava/util/List;)V

    .line 332
    :try_start_e
    new-instance v1, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v1}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 336
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->notifyCertificateRemovedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    :try_end_19
    .catch Landroid/security/KeyStoreException; {:try_start_e .. :try_end_19} :catch_25
    .catchall {:try_start_e .. :try_end_19} :catchall_23

    .line 341
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 342
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 344
    :cond_22
    return-void

    .line 341
    :catchall_23
    move-exception v1

    goto :goto_2f

    .line 337
    :catch_25
    move-exception v1

    .line 338
    .local v1, "e":Landroid/security/KeyStoreException;
    :try_start_26
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    .line 339
    nop

    .end local v0    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local p0    # "this":Landroid/security/KeyStore2;
    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    throw v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_23

    .line 341
    .end local v1    # "e":Landroid/security/KeyStoreException;
    .restart local v0    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .restart local p0    # "this":Landroid/security/KeyStore2;
    .restart local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :goto_2f
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 342
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 343
    :cond_38
    throw v1
.end method

.method public blacklist getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyEntryResponse;

    return-object v0
.end method

.method public blacklist getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;
    .registers 3
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyStoreSecurityLevel;

    return-object v0
.end method

.method public blacklist grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "granteeUid"    # I
    .param p3, "accessVector"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;-><init>(Landroid/system/keystore2/KeyDescriptor;II)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public blacklist list(IJ)[Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "domain"    # I
    .param p2, "namespace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;-><init>(IJ)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public blacklist ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    .registers 4
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;-><init>(Landroid/system/keystore2/KeyDescriptor;I)V

    invoke-direct {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public blacklist updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    .registers 7
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "publicCert"    # [B
    .param p3, "publicCertChain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x3

    const-string v1, "KeyStore"

    invoke-static {p1, v0, v1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    .line 295
    .local v0, "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v0, p2, p3}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserCertAndChain([B[B)V

    .line 297
    :try_start_a
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->checkCertificateTrustful(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 298
    new-instance v1, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;-><init>(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    invoke-direct {p0, v1}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;
    :try_end_15
    .catch Landroid/security/KeyStoreException; {:try_start_a .. :try_end_15} :catch_21
    .catchall {:try_start_a .. :try_end_15} :catchall_1f

    .line 306
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 307
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 309
    :cond_1e
    return-void

    .line 306
    :catchall_1f
    move-exception v1

    goto :goto_2b

    .line 302
    :catch_21
    move-exception v1

    .line 303
    .local v1, "e":Landroid/security/KeyStoreException;
    :try_start_22
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    .line 304
    nop

    .end local v0    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local p0    # "this":Landroid/security/KeyStore2;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "publicCert":[B
    .end local p3    # "publicCertChain":[B
    throw v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_1f

    .line 306
    .end local v1    # "e":Landroid/security/KeyStoreException;
    .restart local v0    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .restart local p0    # "this":Landroid/security/KeyStore2;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "publicCert":[B
    .restart local p3    # "publicCertChain":[B
    :goto_2b
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 307
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 308
    :cond_34
    throw v1
.end method
