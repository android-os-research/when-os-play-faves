.class public final Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DarVirtualLock"
.end annotation


# static fields
.field public static final DAR_VIRTUAL_TAG:Ljava/lang/String; = "LockSettingsService.DarVirtualLock"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 6077
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 14

    .line 6179
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6181
    :try_start_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 6182
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6183
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->prepare(I)Z

    .line 6184
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 6185
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 6184
    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    goto :goto_44

    .line 6187
    :cond_26
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 6188
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 6189
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p3

    .line 6188
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 6193
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    if-eqz v2, :cond_8c

    .line 6195
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz p4, :cond_83

    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object p4

    .line 6196
    invoke-virtual {p4, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result p4

    if-eqz p4, :cond_83

    .line 6197
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    move-result-object p4

    invoke-virtual {p4, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v7

    .line 6199
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result p4

    if-eqz p4, :cond_8c

    .line 6200
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    move-result-object v3

    const/4 v8, 0x0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->activateEscrowTokenForDualDAR(JI[B[B)V

    goto :goto_8c

    .line 6204
    :cond_83
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 6207
    :cond_8c
    :goto_8c
    monitor-exit v0

    return-wide p1

    :catchall_8e
    move-exception p0

    .line 6208
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public clearLock(I)V
    .registers 6

    .line 6147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear virtual lock for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6149
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Handle(%d) detected at the moment of clearing lock for user %d"

    .line 6151
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6155
    :cond_3a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 6156
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 6157
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgateKeeperClearSecureUserId(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 6158
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    return-void
.end method

.method public doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    if-eqz p1, :cond_62

    .line 6085
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_62

    .line 6089
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 6090
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6091
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mspBasedDoVerifyCredential(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_2d

    .line 6093
    :cond_19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Sp not yet applied to user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_2d
    if-nez v0, :cond_31

    .line 6095
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_31
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 6097
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p4

    const/4 p4, 0x1

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p4

    const-string p4, "Result of verification for user %d : %s"

    .line 6096
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6099
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz p3, :cond_61

    .line 6100
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p3

    if-nez p3, :cond_59

    .line 6101
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->onCredentialMismatchedForInner(I)V

    goto :goto_61

    .line 6103
    :cond_59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p0

    if-nez p0, :cond_61

    .line 6104
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_61
    :goto_61
    return-object v0

    .line 6086
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credential can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isInnerAuthUserForDualDarDo(I)Z
    .registers 3

    .line 6244
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object p0

    .line 6245
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public onCredentialMismatchedForInner(I)V
    .registers 4

    .line 6249
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6254
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 6255
    :try_start_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    if-eqz p0, :cond_32

    .line 6257
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_34

    if-eqz p0, :cond_32

    .line 6260
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->get()Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 6262
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->onInnerLayerUnlockFailed()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a
    .catchall {:try_start_20 .. :try_end_29} :catchall_34

    goto :goto_32

    :catch_2a
    move-exception p0

    :try_start_2b
    const-string p1, "LockSettingsService.DarVirtualLock"

    const-string v1, "Callback might be dead..."

    .line 6265
    invoke-static {p1, v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6269
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_34

    throw p0
.end method

.method public onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 8

    .line 6273
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 6278
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result v0

    .line 6279
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v2

    .line 6281
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    .line 6279
    :goto_28
    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result v2

    if-eqz v2, :cond_b1

    const-string v2, "LockSettingsService.DarVirtualLock"

    .line 6282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inner-layer authenticated with auth user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6285
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetUserPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 6288
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 6289
    :try_start_50
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    if-eqz p2, :cond_ac

    .line 6291
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v3, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mAuthToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget-object v4, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    .line 6293
    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 6294
    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 6296
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_ae

    if-eqz p2, :cond_ac

    .line 6299
    :try_start_75
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->get()Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 6301
    invoke-interface {v2}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->onInnerLayerUnlocked()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7e} :catch_8d
    .catchall {:try_start_75 .. :try_end_7e} :catchall_8b

    .line 6306
    :cond_7e
    :try_start_7e
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 6307
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    :goto_87
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_ae

    goto :goto_ac

    :catchall_8b
    move-exception v1

    goto :goto_9f

    :catch_8d
    move-exception v2

    :try_start_8e
    const-string v3, "LockSettingsService.DarVirtualLock"

    const-string v4, "Callback might be dead..."

    .line 6304
    invoke-static {v3, v4, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_8b

    .line 6306
    :try_start_95
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 6307
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    goto :goto_87

    .line 6306
    :goto_9f
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 6307
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 6308
    throw v1

    .line 6311
    :cond_ac
    :goto_ac
    monitor-exit p1

    return v1

    :catchall_ae
    move-exception p0

    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_95 .. :try_end_b0} :catchall_ae

    throw p0

    :cond_b1
    const-string p0, "LockSettingsService.DarVirtualLock"

    .line 6314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed in inner-layer authentication with auth user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p2
.end method

.method public prepare(I)Z
    .registers 5

    .line 6162
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "users"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6163
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6164
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_44

    .line 6165
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 6166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepare - failed to create sp state path for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService.DarVirtualLock"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6170
    :cond_3a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f9

    const/4 v0, -0x1

    .line 6169
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 8

    .line 6113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6116
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6117
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->clearLock(I)V

    const/4 p0, 0x1

    return p0

    .line 6122
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6123
    :try_start_18
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 6124
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->prepare(I)Z

    .line 6125
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 6127
    :cond_29
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mspBasedSetLockCredentialInternalLocked(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p4

    .line 6129
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_70

    .line 6130
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz v0, :cond_63

    if-eqz p4, :cond_63

    .line 6132
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 6133
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    .line 6134
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result v0

    .line 6135
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    .line 6133
    invoke-virtual {p4, v0, p2, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Change(I[B[B)Z

    move-result p4

    if-eqz p4, :cond_63

    .line 6137
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetUserPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_63
    if-nez p4, :cond_6f

    const-string p0, "LockSettingsService.DarVirtualLock"

    const-string p1, "Unexpected failure while change password"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 6141
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_6f
    return p4

    :catchall_70
    move-exception p0

    .line 6129
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 15

    .line 6213
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 6214
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 6217
    :try_start_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    goto :goto_38

    :catch_1a
    move-exception v0

    const-string v2, "LockSettingsService.DarVirtualLock"

    .line 6220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_38
    if-nez v0, :cond_53

    const-string p0, "LockSettingsService.DarVirtualLock"

    .line 6223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dual DAR Client failed to reset password with token for user: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 6228
    :cond_53
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6229
    :try_start_5a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 6230
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    .line 6229
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 6231
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez p3, :cond_78

    const-string p0, "Invalid escrow token supplied"

    .line 6232
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6233
    monitor-exit v0

    return v1

    .line 6235
    :cond_78
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide p3

    .line 6236
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-static {v1, p1, p2, p5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithAuthTokenLocked(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 6237
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    const/4 p0, 0x1

    .line 6238
    monitor-exit v0

    return p0

    :catchall_91
    move-exception p0

    .line 6239
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_5a .. :try_end_93} :catchall_91

    throw p0
.end method
