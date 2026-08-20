.class public Lcom/android/server/appprelauncher/AppPrelaunchManagerService;
.super Lcom/android/server/SystemService;
.source "AppPrelaunchManagerService.java"


# static fields
.field public static final DEFAULT_PRELAUNCH_STAGE:I = 0x4

.field public static final DISABLE_PREL:Z

.field public static final PRELAUNCH_SERVICE:Ljava/lang/String; = "prelauncher"

.field public static final PRELAUNCH_STAGE_FINISHED:I = 0x4

.field public static final PRELAUNCH_STAGE_KILLED:I = 0x6

.field public static final PRELAUNCH_STAGE_PREPARE:I = 0x0

.field public static final PRELAUNCH_STAGE_START:I = 0x1

.field public static final PRELAUNCH_STAGE_TASKREMOVED:I = 0x3

.field public static final PRELAUNCH_STAGE_TASKREMOVING:I = 0x2

.field public static final PRELAUNCH_STAGE_USERSTARTED:I = 0x5

.field public static final TAG_PREL:Ljava/lang/String; = "PREL"


# instance fields
.field public mService:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_16

    const-string v0, "com.samsung.speg.prelauncher.disable"

    .line 50
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    sput-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    return-void
.end method


# virtual methods
.method public handleActivityExecution(I)Z
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 159
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handleActivityExecution(I)Z

    move-result p0

    return p0
.end method

.method public handleActivityExecution(Ljava/lang/String;I)Z
    .registers 3

    .line 163
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 164
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handleActivityExecution(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public handlePrelaunchedAppDied(ILjava/lang/String;)V
    .registers 3

    .line 183
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_5

    return-void

    .line 184
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handlePrelaunchedAppDied(ILjava/lang/String;)V

    return-void
.end method

.method public initPrelauncher(Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 123
    sget-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    const-string v1, "PREL"

    if-eqz v0, :cond_c

    const-string p0, "Prelaunch service is disabled"

    .line 124
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_c
    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;-><init>(Landroid/content/Context;Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->initCoreServices()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 130
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->registerBroadcastReceiver()V

    .line 131
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    const-string/jumbo p2, "prelauncher"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_33

    :cond_2b
    const-string p1, "Failed to start AppPrelaunchService"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    :goto_33
    return-void
.end method

.method public isAppPrelaunched(I)Z
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(I)Z

    move-result p0

    return p0
.end method

.method public isAppPrelaunched(Ljava/lang/String;I)Z
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 2

    const-string p0, "PREL"

    const-string v0, "Manager service started"

    .line 142
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRemoveTaskByIdCallback(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_5

    return-void

    .line 179
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setRemoveTaskByIdCallback(Ljava/util/function/Function;)V

    return-void
.end method

.method public setSetupWizardFinished(Z)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_5

    return-void

    .line 169
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setSetupWizardFinished(Z)V

    return-void
.end method

.method public setSmartSwitchState(Z)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_5

    return-void

    .line 174
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setSmartSwitchState(Z)V

    return-void
.end method
