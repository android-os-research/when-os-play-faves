.class public abstract Lcom/android/server/wm/DexRestartAppInfo;
.super Ljava/lang/Object;
.source "DexRestartAppInfo.java"


# static fields
.field public static final SAFE_DEBUG:Z


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mKeepProcessAlive:Z

.field public mLaunchTaskId:I

.field public mOptions:Landroid/app/ActivityOptions;

.field public mPal:Lcom/android/server/wm/PendingActivityLaunch;

.field public mPreferredDisplayId:I

.field public mProcessName:Ljava/lang/String;

.field public mReusedTask:Lcom/android/server/wm/Task;

.field public mSkipToShow:Z

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mUid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DexRestartAppInfo;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DexRestartAppInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "DexController"

    .line 41
    iput-object p3, p0, Lcom/android/server/wm/DexRestartAppInfo;->TAG:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    .line 61
    iput-object p4, p0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    .line 62
    iput-object p5, p0, Lcom/android/server/wm/DexRestartAppInfo;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz p6, :cond_12

    goto :goto_16

    .line 63
    :cond_12
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p6

    :goto_16
    iput-object p6, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 64
    iput p7, p0, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    return-void
.end method

.method public static createPendingActivityLaunchType(Lcom/android/server/wm/PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/DexRestartAppInfo;
    .registers 18

    .line 75
    new-instance v9, Lcom/android/server/wm/PendingActivityLaunchInfo;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/PendingActivityLaunchInfo;-><init>(Lcom/android/server/wm/PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V

    return-object v9
.end method

.method public static createPendingPairAppsLaunchType(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/DexRestartAppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/window/WindowContainerTransaction;",
            ")",
            "Lcom/android/server/wm/DexRestartAppInfo;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/PendingPairAppsLaunchInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V

    return-object v0
.end method

.method public static createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/DexRestartAppInfo;
    .registers 14

    .line 82
    new-instance v7, Lcom/android/server/wm/StartActivityFromRecentsInfo;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StartActivityFromRecentsInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V

    return-object v7
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public abstract getAppName(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/lang/CharSequence;
.end method

.method public getMovingTaskLocked(Lcom/android/server/wm/DexController;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DexController;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DexController$FindTaskResult;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, p2}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    return p0
.end method

.method public isKeepProcessAlive()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mKeepProcessAlive:Z

    return p0
.end method

.method public setKeepProcessAlive(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/android/server/wm/DexRestartAppInfo;->mKeepProcessAlive:Z

    return-void
.end method

.method public skipToShow()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/android/server/wm/DexRestartAppInfo;->mSkipToShow:Z

    return p0
.end method

.method public abstract startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V
.end method
