.class public Landroid/security/KeyStoreSecurityLevel;
.super Ljava/lang/Object;
.source "KeyStoreSecurityLevel.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreSecurityLevel"


# instance fields
.field private final blacklist mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V
    .registers 3
    .param p1, "securityLevel"    # Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p1}, Landroid/system/keystore2/IKeystoreSecurityLevel;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 53
    iput-object p1, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 54
    return-void
.end method

.method private blacklist handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 58
    .local p1, "request":Landroid/security/CheckedRemoteRequest;, "Landroid/security/CheckedRemoteRequest<TR;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/security/CheckedRemoteRequest;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 61
    :catch_5
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Could not connect to Keystore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1a
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .registers 8
    .param p0, "millis"    # J

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "wasInterrupted":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 256
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    .line 259
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

    .line 260
    goto :goto_16

    .line 263
    :catch_14
    move-exception v4

    .line 266
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 269
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_16
    if-eqz v0, :cond_1f

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 272
    :cond_1f
    return-void

    .line 261
    :catch_20
    move-exception v4

    .line 262
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 267
    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_a
.end method


# virtual methods
.method public blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;
    .registers 8
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)",
            "Landroid/security/KeyStoreOperation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 83
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 86
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    const/4 v2, 0x0

    .line 84
    invoke-interface {v0, p1, v1, v2}, Landroid/system/keystore2/IKeystoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object v0

    .line 89
    .local v0, "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    const/4 v1, 0x0

    .line 90
    .local v1, "challenge":Ljava/lang/Long;
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    if-eqz v2, :cond_21

    .line 91
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    iget-wide v2, v2, Landroid/system/keystore2/OperationChallenge;->challenge:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 93
    :cond_21
    const/4 v2, 0x0

    .line 94
    .local v2, "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    if-eqz v3, :cond_2b

    .line 95
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    iget-object v3, v3, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    move-object v2, v3

    .line 97
    :cond_2b
    new-instance v3, Landroid/security/KeyStoreOperation;

    iget-object v4, v0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-direct {v3, v4, v1, v2}, Landroid/security/KeyStoreOperation;-><init>(Landroid/system/keystore2/IKeystoreOperation;Ljava/lang/Long;[Landroid/hardware/security/keymint/KeyParameter;)V
    :try_end_32
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_32} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    return-object v3

    .line 125
    .end local v0    # "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    .end local v1    # "challenge":Ljava/lang/Long;
    .end local v2    # "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    :catch_33
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v1, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v1

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_72

    .line 123
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1

    .line 104
    :pswitch_52
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 105
    .local v1, "backOffHint":J
    const-wide/32 v3, 0xa206cc8

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 118
    invoke-static {v1, v2}, Landroid/security/KeyStoreSecurityLevel;->interruptedPreservingSleep(J)V

    .line 120
    nop

    .line 128
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "backOffHint":J
    goto :goto_0

    .line 109
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v1    # "backOffHint":J
    :cond_6b
    new-instance v3, Landroid/security/keystore/BackendBusyException;

    invoke-direct {v3, v1, v2}, Landroid/security/keystore/BackendBusyException;-><init>(J)V

    throw v3

    nop

    :pswitch_data_72
    .packed-switch 0x12
        :pswitch_52
    .end packed-switch
.end method

.method public blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 15
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 149
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 151
    :try_start_6
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;
    :try_end_18
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_18} :catch_19

    return-object v0

    .line 154
    :catch_19
    move-exception v0

    .line 155
    .local v0, "e":Landroid/security/KeyStoreException;
    const/4 v1, 0x4

    .line 156
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const-string v3, "KeyStoreSecurityLevel"

    invoke-static {p1, v1, v3, v2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 157
    throw v0

    .line 161
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_29
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda3;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    return-object v0
.end method

.method public blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 21
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 183
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    move-object v8, p0

    move-object/from16 v9, p1

    const-string v10, "KeyStoreSecurityLevel"

    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 184
    const/4 v11, 0x0

    .line 185
    .local v11, "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    const/4 v12, 0x1

    .line 187
    .local v12, "errorCode":I
    const/4 v13, 0x5

    const/4 v14, 0x1

    :try_start_f
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;
    :try_end_26
    .catch Landroid/security/KeyStoreException; {:try_start_f .. :try_end_26} :catch_41
    .catchall {:try_start_f .. :try_end_26} :catchall_3f

    .line 189
    .end local v11    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    .local v0, "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 194
    if-ne v12, v14, :cond_36

    if-eqz v0, :cond_36

    iget-object v1, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    if-eqz v1, :cond_36

    .line 195
    iget-object v1, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v1, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v1, v2, v9}, Landroid/security/KeyStoreAuditLog;->setKeyDescriptorBeforeImportKey(JLandroid/system/keystore2/KeyDescriptor;)V

    .line 198
    :cond_36
    nop

    .line 199
    invoke-static {v9, v13, v10, v12}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 189
    return-object v0

    .line 194
    .end local v0    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    .restart local v11    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    :catchall_3f
    move-exception v0

    goto :goto_49

    .line 190
    :catch_41
    move-exception v0

    .line 191
    .local v0, "e":Landroid/security/KeyStoreException;
    :try_start_42
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    move v12, v1

    .line 192
    nop

    .end local v11    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    .end local v12    # "errorCode":I
    .end local p0    # "this":Landroid/security/KeyStoreSecurityLevel;
    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p4    # "flags":I
    .end local p5    # "keyData":[B
    throw v0
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    .line 194
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v11    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    .restart local v12    # "errorCode":I
    .restart local p0    # "this":Landroid/security/KeyStoreSecurityLevel;
    .restart local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p4    # "flags":I
    .restart local p5    # "keyData":[B
    :goto_49
    if-ne v12, v14, :cond_58

    if-eqz v11, :cond_58

    iget-object v1, v11, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    if-eqz v1, :cond_58

    .line 195
    iget-object v1, v11, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v1, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v1, v2, v9}, Landroid/security/KeyStoreAuditLog;->setKeyDescriptorBeforeImportKey(JLandroid/system/keystore2/KeyDescriptor;)V

    .line 198
    :cond_58
    nop

    .line 199
    invoke-static {v9, v13, v10, v12}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 200
    throw v0

    .line 203
    .end local v11    # "keyMetadata":Landroid/system/keystore2/KeyMetadata;
    .end local v12    # "errorCode":I
    :cond_61
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    return-object v0
.end method

.method public blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 22
    .param p1, "wrappedKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "wrappedKey"    # [B
    .param p4, "maskingKey"    # [B
    .param p6, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "[B[B",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/AuthenticatorSpec;",
            ")",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 226
    .local p5, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    move-object v8, p0

    move-object/from16 v9, p1

    const-string v10, "KeyStoreSecurityLevel"

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    move-object v11, v0

    .line 227
    .local v11, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v0, v9, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v0, v11, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 228
    iget-wide v0, v9, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v0, v11, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 229
    move-object/from16 v12, p3

    iput-object v12, v11, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 230
    iget v0, v9, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v0, v11, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 233
    invoke-static {}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 234
    const/4 v13, 0x1

    .line 236
    .local v13, "errorCode":I
    const/4 v14, 0x5

    :try_start_23
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda4;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;
    :try_end_39
    .catch Landroid/security/KeyStoreException; {:try_start_23 .. :try_end_39} :catch_44
    .catchall {:try_start_23 .. :try_end_39} :catchall_42

    .line 243
    nop

    .line 244
    invoke-static {v11, v14, v10, v13}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 236
    return-object v0

    .line 243
    :catchall_42
    move-exception v0

    goto :goto_4c

    .line 239
    :catch_44
    move-exception v0

    .line 240
    .local v0, "e":Landroid/security/KeyStoreException;
    :try_start_45
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    move v13, v1

    .line 241
    nop

    .end local v11    # "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v13    # "errorCode":I
    .end local p0    # "this":Landroid/security/KeyStoreSecurityLevel;
    .end local p1    # "wrappedKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "wrappedKey":[B
    .end local p4    # "maskingKey":[B
    .end local p5    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p6    # "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    throw v0
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 244
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v11    # "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v13    # "errorCode":I
    .restart local p0    # "this":Landroid/security/KeyStoreSecurityLevel;
    .restart local p1    # "wrappedKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "wrappedKey":[B
    .restart local p4    # "maskingKey":[B
    .restart local p5    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p6    # "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    :goto_4c
    invoke-static {v11, v14, v10, v13}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 245
    throw v0

    .line 248
    .end local v13    # "errorCode":I
    :cond_54
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda5;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    return-object v0
.end method

.method synthetic blacklist lambda$generateKey$0$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 152
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 151
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$generateKey$1$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 162
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 161
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importKey$2$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 188
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 187
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importKey$3$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 204
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 203
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importWrappedKey$4$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "args"    # Ljava/util/Collection;
    .param p5, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 238
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 236
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$importWrappedKey$5$android-security-KeyStoreSecurityLevel(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "args"    # Ljava/util/Collection;
    .param p5, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 250
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 248
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method
