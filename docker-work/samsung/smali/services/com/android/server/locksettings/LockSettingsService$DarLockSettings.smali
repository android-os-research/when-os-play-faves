.class public Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DarLockSettings"
.end annotation


# instance fields
.field public service:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public static synthetic $r8$lambda$dlXY3R5bkz3fFK8EvNmziIFZPqU(ILcom/android/server/knox/dar/DarManagerService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->lambda$saveEscrowDataIfNeededLocked$0(ILcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 3

    .line 6327
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6328
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    return-void
.end method

.method public static synthetic lambda$saveEscrowDataIfNeededLocked$0(ILcom/android/server/knox/dar/DarManagerService;)V
    .registers 2

    .line 6339
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/DarManagerService;->saveSecuredEscrowData(I)V

    return-void
.end method


# virtual methods
.method public checkLockMaterialsTraced(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 4

    return-void
.end method

.method public clearStorageForUser(I)V
    .registers 3

    .line 6472
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6473
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    :cond_15
    return-void
.end method

.method public getSecureMode(I)I
    .registers 5

    .line 6461
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6462
    :try_start_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6463
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 6464
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(JI)I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    .line 6466
    :goto_21
    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public isSyntheticPasswordEnabledForSystem()Z
    .registers 7

    .line 6495
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const-string v0, "enable-sp-for-system"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long p0, v4, v1

    if-eqz p0, :cond_10

    const/4 v3, 0x1

    :cond_10
    return v3
.end method

.method public restoreEscrowDataIfNeededLocked(I)V
    .registers 5

    if-eqz p1, :cond_3

    return-void

    .line 6347
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 6350
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 6351
    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misKnoxAdminActivated(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 6354
    :cond_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 6355
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSecuredEscrowData(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-nez v0, :cond_3a

    return-void

    :cond_3a
    const-string v1, "e0"

    .line 6360
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "p1"

    .line 6361
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v1, :cond_54

    if-eqz v0, :cond_54

    .line 6363
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData([B[BI)V

    :cond_54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    .line 6368
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Escrow data for user %d got restored [ Res : %b ]"

    .line 6365
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public saveEscrowDataIfNeededLocked(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 6332
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isSdpMdfppMode()Z

    move-result p1

    goto :goto_9

    :cond_8
    move p1, v0

    .line 6333
    :goto_9
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6334
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    if-nez p1, :cond_3a

    if-nez v0, :cond_3a

    if-nez p2, :cond_3a

    const-string p1, "SP has been initialized for system"

    .line 6336
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6337
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const-wide/16 v0, 0x1

    const-string v2, "enable-sp-for-system"

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 6338
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3a
    return-void
.end method

.method public setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11

    .line 6374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential for secure folder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    if-nez p1, :cond_22

    move-object v3, v1

    goto :goto_26

    .line 6375
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    :goto_26
    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "credentialType"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v3, 0x3

    if-nez p1, :cond_33

    move-object v6, v1

    goto :goto_3b

    .line 6377
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3b
    aput-object v6, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v6, "savedCredential"

    aput-object v6, v0, v3

    const/4 v3, 0x5

    if-nez p2, :cond_47

    goto :goto_4b

    .line 6379
    :cond_47
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    :goto_4b
    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string/jumbo v3, "userId"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 6380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 6375
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6383
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-eqz p1, :cond_a0

    .line 6385
    :try_start_65
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-nez v6, :cond_a0

    if-eqz p2, :cond_74

    .line 6386
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-nez p2, :cond_74

    goto :goto_a0

    .line 6389
    :cond_74
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result p2

    if-eqz p2, :cond_90

    const-string p2, "Secure Folder already has sp based credential"

    .line 6390
    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6391
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p0

    if-eqz p0, :cond_b1

    .line 6393
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_a7

    .line 6395
    :cond_90
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result p0

    if-eqz p0, :cond_b1

    const-string p0, "Secure Folder seems to need sp initialization first"

    .line 6396
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6397
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_a7

    :cond_a0
    :goto_a0
    const-string p0, "Seems normal case, skip handling"

    .line 6387
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6388
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a7} :catch_ab
    .catchall {:try_start_65 .. :try_end_a7} :catchall_a9

    :goto_a7
    move-object v3, p0

    goto :goto_b1

    :catchall_a9
    move-exception p0

    goto :goto_cc

    :catch_ab
    move-exception p0

    :try_start_ac
    const-string p1, "Unexpected exception while set sf credential"

    .line 6400
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_a9

    .line 6402
    :cond_b1
    :goto_b1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-array p0, v5, [Ljava/lang/Object;

    .line 6407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "Result of setting credential for secure folder user %d : %s"

    .line 6405
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-object v3

    .line 6402
    :goto_cc
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6403
    throw p0
.end method

.method public setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 16

    .line 6422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential via trusted domain for SecureFolder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential,"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6424
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "credentialType"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 6425
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v5, "userId"

    aput-object v5, v0, v1

    .line 6426
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 6424
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6429
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_65

    .line 6430
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/knox/dar/DarManagerService;->getSecureFolderTokenHandleViaProtector(I)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_66

    :cond_65
    move-wide v9, v5

    :goto_66
    cmp-long v0, v9, v5

    if-nez v0, :cond_70

    const-string p0, "Failed to get SecureFolder token handle"

    .line 6434
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_85

    .line 6438
    :cond_70
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/knox/dar/DarManagerService;

    move-result-object v0

    .line 6439
    invoke-virtual {v0, p2}, Lcom/android/server/knox/dar/DarManagerService;->getSecureFolderResetTokenViaProtector(I)[B

    move-result-object v0

    .line 6441
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string p0, "Failed to get SecureFolder reset token"

    .line 6442
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_85
    move p0, v2

    goto :goto_93

    .line 6446
    :cond_87
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    move-object v8, p1

    move-object v11, v0

    move v12, p2

    invoke-static/range {v7 .. v12}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    .line 6449
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    :goto_93
    new-array p1, v4, [Ljava/lang/Object;

    .line 6454
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Result of setting credential via protector for SecureFolder user %d : [ res : %s ]"

    .line 6452
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return p0
.end method
