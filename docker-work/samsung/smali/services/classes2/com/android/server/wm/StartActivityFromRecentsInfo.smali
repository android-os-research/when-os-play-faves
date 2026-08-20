.class public final Lcom/android/server/wm/StartActivityFromRecentsInfo;
.super Lcom/android/server/wm/DexRestartAppInfo;
.source "DexRestartAppInfo.java"


# direct methods
.method public static synthetic $r8$lambda$VY6K7d23kepFcZ9W5fp1TZ1tB0I(Lcom/android/server/wm/StartActivityFromRecentsInfo;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/StartActivityFromRecentsInfo;->lambda$startResult$0(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V
    .registers 7

    .line 205
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/DexRestartAppInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method private synthetic lambda$startResult$0(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 239
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->doPendingStartRecent()V

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_15
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_1d

    :catchall_13
    move-exception p0

    goto :goto_23

    :catch_15
    move-exception p0

    .line 245
    :try_start_16
    sget-boolean v0, Lcom/android/server/wm/DexRestartAppInfo;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 247
    :cond_1d
    :goto_1d
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->finishPendingStartRecent()V

    return-void

    :goto_23
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p1}, Lcom/android/server/wm/DexController;->finishPendingStartRecent()V

    .line 248
    throw p0
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/lang/CharSequence;
    .registers 3

    .line 210
    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_17

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_17

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 7

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    const-string v1, "DexController"

    if-nez v0, :cond_d

    const-string/jumbo p0, "startResult: mReusedTask=null"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startResult: failed, cannot find display#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 231
    sget-boolean v2, Lcom/android/server/wm/DexRestartAppInfo;->SAFE_DEBUG:Z

    if-eqz v2, :cond_57

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startResult: windowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " targetDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    const/4 p2, 0x1

    .line 236
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 237
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/StartActivityFromRecentsInfo;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_ACTIVITY_FROM_RECENTS_TYPE, launchTaskId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexRestartAppInfo;->mLaunchTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
