.class public final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/internal/widget/LockSettingsInternal;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 5055
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    .line 5060
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public armRebootEscrow()I
    .registers 1

    .line 5150
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->armRebootEscrowIfNeeded()I

    move-result p0

    return p0
.end method

.method public clearRebootEscrow()Z
    .registers 3

    .line 5140
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 5143
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->noLongerRequireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearStorageForUser(I)V
    .registers 2

    .line 5171
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->clearStorageForUser(I)V

    return-void
.end method

.method public getCredentialType(I)I
    .registers 2

    .line 5161
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    move-result p0

    return p0
.end method

.method public getSecureMode(I)I
    .registers 2

    .line 5166
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    move-result p0

    return p0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 7

    .line 5108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5110
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misProfileWithUnifiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "LockSettingsService"

    .line 5115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying password metrics for unified challenge profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2c

    .line 5119
    :cond_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5121
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0

    :catchall_2c
    move-exception p0

    .line 5119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5120
    throw p0
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 4

    .line 5071
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public prepareRebootEscrow()Z
    .registers 3

    .line 5126
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 5129
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshStrongAuthTimeout(I)V
    .registers 2

    .line 5155
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->refreshStrongAuthTimeout(I)V

    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 4

    .line 5066
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 15

    .line 5077
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 5078
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    goto :goto_18

    .line 5079
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5084
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 5086
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "n_digits_pin_enabled"

    invoke-static {v3, v4, v2, p5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_33
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    goto :goto_33

    :catchall_2e
    move-exception p0

    .line 5089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5090
    throw p0

    .line 5089
    :catch_33
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5093
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p2

    if-nez p2, :cond_43

    return v2

    .line 5097
    :cond_43
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .registers 2

    .line 5135
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)Z
    .registers 5

    .line 5103
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result p0

    return p0
.end method
