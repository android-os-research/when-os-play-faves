.class public Lcom/android/server/wm/FoldingPolicy;
.super Ljava/lang/Object;
.source "FoldingPolicy.java"

# interfaces
.implements Lcom/android/server/wm/FoldDisplayController$Policy;


# static fields
.field public static final FLAG_FOLDING_POLICY_DISMISS_SPLIT_SCREEN_MODE:I = 0x8

.field public static final FLAG_FOLDING_POLICY_GO_HOME:I = 0x2

.field public static final FLAG_FOLDING_POLICY_NOTHING:I = 0x0

.field public static final FLAG_FOLDING_POLICY_SAVE_TOP_TASK:I = 0x4

.field public static final FLAG_FOLDING_POLICY_SCREEN_OFF:I = 0x1

.field public static final SAMSUNG_INCALL_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.incallui"

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mDefaultDialerPackage:Ljava/lang/String;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsInCall:Z

.field public mLog:Ljava/lang/StringBuilder;

.field public mPolicy:I

.field public final mSaLogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetStageType:I

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTopTaskId:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$bvMwrZqL_q9DpG94EwQeLovma-4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/FoldingPolicy;->lambda$buildFullScreenFoldingPolicy$1(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/android/server/wm/FoldingPolicy;->mDefaultDialerPackage:Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/android/server/wm/FoldingPolicy;->mTargetStageType:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mSaLogMap:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 88
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WindowManagerExt.mBroadcastWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/server/wm/FoldingPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public static synthetic lambda$buildFullScreenFoldingPolicy$0(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$buildFullScreenFoldingPolicy$1(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "W001"

    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$buildFullScreenFoldingPolicy$2(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_7

    const-string p0, "W009"

    .line 299
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p0, "W001"

    .line 303
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .registers 3

    const-string v0, "WindowManager"

    const-string v1, "apply FoldingPolicy"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/FoldingPolicy;->applyFoldingPolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public final applyFoldingPolicy()V
    .registers 11

    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/FoldingPolicy;->buildFoldingPolicy()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 124
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 125
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskSnapshotController;->forceTaskSnapshotInFoldingAction()V

    .line 126
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 128
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v3, :cond_3c

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicyExt;->sendFoldSaLoggingWhenFolded()V

    goto :goto_3c

    .line 132
    :cond_31
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_3c
    :goto_3c
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7c

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_52

    const-string p0, "WindowManager"

    const-string v0, "Not going home because user setup is in progress."

    .line 142
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_52
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 155
    iget-object v2, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v4, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const-string v5, "applyFoldingPolicyLocked"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40000

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZI)Z

    .line 158
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7c

    :catchall_76
    move-exception p0

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 161
    :cond_7c
    :goto_7c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PREMIUM_WATCH:Z

    if-eqz v0, :cond_90

    iget-object p0, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_90

    if-eqz v1, :cond_90

    .line 163
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->launchPremiumWatch(Z)V

    :cond_90
    return-void
.end method

.method public final buildFoldingPolicy()I
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    const-string v4, "buildFoldingPolicyInfo"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isInCall="

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    iget-boolean v3, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x1

    :goto_2c
    iput v3, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/FoldingPolicy;->buildMultiWindowFoldingPolicy()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 181
    iget v3, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_ab

    .line 185
    :try_start_36
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fl=0x"

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowManager"

    .line 188
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v1, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_e0

    .line 181
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 183
    :cond_6e
    :try_start_6e
    invoke-virtual {p0}, Lcom/android/server/wm/FoldingPolicy;->buildFullScreenFoldingPolicy()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_ab

    .line 185
    :try_start_71
    iget-object v3, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fl=0x"

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowManager"

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v1, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    .line 192
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_71 .. :try_end_a5} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 193
    iget p0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    return p0

    :catchall_ab
    move-exception v3

    .line 185
    :try_start_ac
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fl=0x"

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowManager"

    .line 188
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v1, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    .line 191
    throw v3

    :catchall_e0
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_ac .. :try_end_e2} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final buildFullScreenFoldingPolicy()V
    .registers 9

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/FoldingPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 259
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_10

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v0, :cond_17

    .line 261
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_18

    :cond_17
    move-object v4, v2

    :goto_18
    const/4 v5, 0x0

    if-eqz v0, :cond_b8

    .line 263
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isUnderHomeRootTask()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_b8

    :cond_23
    if-eqz v3, :cond_fc

    .line 280
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 281
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 283
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 285
    :cond_37
    iget-boolean v4, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mDefaultDialerPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wm/FoldingPolicy;->isInCallPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_47

    :cond_46
    move v1, v5

    .line 287
    :goto_47
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mKeepScreenWhenFolding:Z

    .line 311
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    const-string v6, ", "

    if-nez v4, :cond_61

    if-nez v1, :cond_5a

    if-nez v3, :cond_5a

    goto :goto_61

    .line 314
    :cond_5a
    iget v0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    goto :goto_88

    .line 316
    :cond_61
    :goto_61
    iget-object v4, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 317
    iget-object p0, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "inLockTaskMode=true"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 320
    :cond_76
    iget v4, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    .line 321
    iget-boolean v7, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    if-nez v7, :cond_88

    .line 322
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/FoldingPolicy;->mTopTaskId:I

    or-int/lit8 v0, v4, 0x4

    .line 323
    iput v0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    .line 326
    :cond_88
    :goto_88
    iget-object p0, p0, Lcom/android/server/wm/FoldingPolicy;->mLog:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isTopInCallPackage="

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hasKeepScreenMetaData="

    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "packageName="

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isAppContinuityModeApplied="

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_fc

    :cond_b8
    :goto_b8
    if-eqz v4, :cond_bf

    .line 265
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_c0

    :cond_bf
    move-object v0, v2

    :goto_c0
    if-eqz v0, :cond_c6

    .line 267
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :cond_c6
    if-eqz v2, :cond_fc

    .line 269
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_e3

    .line 270
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    .line 271
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3

    goto :goto_e4

    :cond_e3
    move v1, v5

    :goto_e4
    if-nez v1, :cond_ec

    .line 273
    iget v0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/FoldingPolicy;->mPolicy:I

    .line 275
    :cond_ec
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_fc

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/FoldingPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/FoldingPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/android/server/wm/FoldingPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_fc
    :goto_fc
    return-void
.end method

.method public final buildMultiWindowFoldingPolicy()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInCallPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p2, :cond_15

    if-nez p1, :cond_6

    goto :goto_15

    .line 340
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "com.samsung.android.incallui"

    .line 341
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    const/4 p0, 0x1

    :cond_15
    :goto_15
    return p0
.end method

.method public prepare(II)Z
    .registers 3

    if-nez p1, :cond_19

    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    goto :goto_19

    .line 99
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/FoldingPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz p2, :cond_18

    .line 100
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/FoldingPolicy;->mIsInCall:Z

    .line 101
    iget-object p2, p0, Lcom/android/server/wm/FoldingPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/FoldingPolicy;->mDefaultDialerPackage:Ljava/lang/String;

    :cond_18
    return p1

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method
