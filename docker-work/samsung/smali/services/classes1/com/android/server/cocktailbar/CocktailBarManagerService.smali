.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/android/server/SystemService;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CocktailBarManagerService"


# instance fields
.field public mAppearance:I

.field public final mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppearance(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mAppearance:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppearance(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mAppearance:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOffWakupCocktailBarFromPowerManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSysfsGripDisableFromWindowManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateSysfsGripDisableFromWindowManagerInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwakupCocktailBarFromWindowManagerInternal(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->wakupCocktailBarFromWindowManagerInternal(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    .line 47
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const-string v0, "CocktailBarManagerService"

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_15

    const-string p1, "PHASE_BOOT_COMPLETED"

    .line 61
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    goto :goto_23

    :cond_15
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_23

    const-string p1, "PHASE_SYSTEM_SERVICES_READY"

    .line 64
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemServicesReady()V

    :cond_23
    :goto_23
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v1, "CocktailBarService"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 55
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSwitchUser: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CocktailBarManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CocktailBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUnlockUser(I)V

    return-void
.end method

.method public final turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V
    .registers 5

    .line 82
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;->JAPAN:Z

    if-eqz v0, :cond_73

    if-eqz p2, :cond_73

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    if-eqz v0, :cond_73

    const v0, 0xffff

    and-int/2addr v0, p1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_21

    goto :goto_73

    :cond_21
    const-string v0, "AreaMailNotificationWakeLock"

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "AlertOnKeyguard"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "jp.co.nttdocomo.lcsapp"

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 89
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turnOffWakupCocktailBarFromPowerManagerInternal : flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tag = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CocktailBarManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    if-nez p1, :cond_65

    .line 91
    new-instance p1, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable-IA;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    .line 93
    :cond_65
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_73
    :goto_73
    return-void
.end method

.method public final updateSysfsGripDisableFromWindowManagerInternal(Z)V
    .registers 2

    .line 106
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    return-void
.end method

.method public final wakupCocktailBarFromWindowManagerInternal(ZII)V
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    return-void
.end method
