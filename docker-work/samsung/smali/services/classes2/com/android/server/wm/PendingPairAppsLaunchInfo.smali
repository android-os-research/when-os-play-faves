.class public final Lcom/android/server/wm/PendingPairAppsLaunchInfo;
.super Lcom/android/server/wm/DexRestartAppInfo;
.source "DexRestartAppInfo.java"


# instance fields
.field public mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mPairTransaction:Landroid/window/WindowContainerTransaction;

.field public mProcessNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bcOfq6BslISAWYwvXx82e4_AdgM(Lcom/android/server/wm/PendingPairAppsLaunchInfo;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->lambda$startResult$0(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V
    .registers 12
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
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DexRestartAppInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V

    .line 268
    iput-object p1, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    .line 269
    iput-object p2, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mUids:Ljava/util/ArrayList;

    .line 270
    iput-object p3, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mAppName:Ljava/util/ArrayList;

    .line 271
    iput-object p4, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mPairTransaction:Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private synthetic lambda$startResult$0(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 293
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mPairTransaction:Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/lang/CharSequence;
    .registers 4

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_b

    .line 279
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_24

    const-string v0, ", "

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_28
    return-object p1
.end method

.method public getMovingTaskLocked(Lcom/android/server/wm/DexController;I)Ljava/util/ArrayList;
    .registers 8
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

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 301
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 302
    iget-object v3, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 302
    invoke-virtual {p1, v3, v4, v1, p2}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v3

    .line 305
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    return-object v0
.end method

.method public startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 4

    .line 292
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/PendingPairAppsLaunchInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PendingPairAppsLaunchInfo;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
