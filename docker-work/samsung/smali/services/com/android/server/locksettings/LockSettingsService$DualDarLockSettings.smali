.class public Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualDarLockSettings"
.end annotation


# instance fields
.field public service:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 6837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6838
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    return-void
.end method


# virtual methods
.method public activateEscrowTokenForDualDAR(JI[B[B)V
    .registers 6

    return-void
.end method

.method public activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I[B)V
    .registers 14

    .line 6867
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6868
    :try_start_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mdisableEscrowTokenOnNonManagedDevicesIfNeeded(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 6869
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "LockSettingsService"

    const-string v3, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 6870
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6871
    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v7

    .line 6873
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    .line 6876
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->activateEscrowTokenForDualDAR(JI[B[B)V

    goto :goto_1a

    .line 6880
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final deriveTokenForDualDAR([B)[B
    .registers 2

    .line 6842
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deriveResetTokenForDualDAR([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final fetchOuterLayerKey(I)[B
    .registers 4

    const-string v0, "LockSettingsService"

    const-string v1, "fetchOuterLayerKey()"

    .line 7080
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7081
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object p0

    const-string p1, "fetchOuterLayerKey Finished"

    .line 7082
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getChangedStorageSecretIfDualDAR(I[B)[B
    .registers 5

    const-string v0, "LockSettingsService"

    const-string v1, "getChangedStorageSecretIfDualDAR"

    .line 7065
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_e

    return-object p2

    .line 7070
    :cond_e
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string p0, "Do not substitute outer-layer-key in case of DualDAR on DO!"

    .line 7071
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 7075
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->fetchOuterLayerKey(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getPendingTokenForDualDAR(IJ)[B
    .registers 6

    .line 6847
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    .line 6848
    :try_start_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokenForDualDar(IJ)[B

    move-result-object p2

    .line 6849
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_32

    .line 6853
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    move-result p1

    if-gtz p1, :cond_31

    const/4 p1, 0x0

    if-eqz p2, :cond_25

    .line 6854
    array-length p3, p2

    add-int/lit8 p3, p3, -0x40

    goto :goto_26

    :cond_25
    move p3, p1

    :goto_26
    if-lez p3, :cond_31

    .line 6856
    new-array v0, p3, [B

    .line 6857
    invoke-static {p2, p1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6858
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->deriveTokenForDualDAR([B)[B

    move-result-object p2

    :cond_31
    return-object p2

    :catchall_32
    move-exception p0

    .line 6849
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public isDualDARUser(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final onPassword2Auth(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Auth()"

    .line 6889
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 6891
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6893
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 6895
    :cond_25
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result p0

    if-nez p0, :cond_3d

    const-string p0, "Authentication Failure by dual dar client"

    .line 6898
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6899
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_3d
    const-string/jumbo p0, "onPassword2Auth completed sucessfully"

    .line 6901
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6902
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {p1, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 6903
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public final onPassword2Change(I[B[B)Z
    .registers 6

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Change()"

    .line 6952
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6953
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Change(I[B[B)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p1, "Authentication Change to DualDAR Client Successful"

    .line 6956
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1e
    const-string p1, "Authentication Change Failure by dual dar client"

    .line 6958
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return p0
.end method

.method public performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public spBasedDoVerifyCredentialForDualDAR(Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6913
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method
