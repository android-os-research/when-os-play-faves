.class public Lcom/android/server/wm/AppPairController;
.super Ljava/lang/Object;
.source "AppPairController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppPairController$H;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppPairController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mEvictChildTasksRunnable:Ljava/lang/Runnable;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/AppPairController$H;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$IR8ht-68OyV3aO1fUBUq0aAEfmE(Lcom/android/server/wm/AppPairController;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppPairController;->lambda$setEvictChildTasksRunnable$0(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IYrKmRZnf1cDphN0eZSM9sASWF4(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AppPairController;->lambda$adjustStartIntents$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zraVAjxgWpnqPcqvWHXC5w8637I(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AppPairController;->lambda$adjustStartTaskAndIntent$2(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static synthetic lambda$adjustStartIntents$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 4

    .line 276
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$adjustStartTaskAndIntent$2(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 4

    .line 370
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$setEvictChildTasksRunnable$0(Landroid/window/WindowContainerTransaction;)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "AppPairController"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run mEvictChildTasksRunnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppPairController;->evictChildTasksIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 116
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsCallback()Landroid/os/RemoteCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 117
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsCallback()Landroid/os/RemoteCallback;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 119
    :cond_2f
    iput-object v2, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    .line 120
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)Z
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v7, v1, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    aput-object v4, v7, v3

    aput-object v4, v7, v5

    aput-object v4, v7, v6

    new-array v1, v1, [I

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v3

    :cond_22
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_78

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 189
    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_22

    .line 190
    new-instance v11, Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v11

    if-nez v11, :cond_4a

    goto :goto_22

    .line 195
    :cond_4a
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v11

    .line 196
    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    .line 197
    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v13}, Lcom/android/server/am/PendingIntentRecord;->getUserId()I

    move-result v13

    if-ne v11, v5, :cond_6d

    aput-object v12, v2, v3

    aput v13, v1, v3

    aput-object v10, v7, v3

    goto :goto_75

    :cond_6d
    if-ne v11, v6, :cond_75

    aput-object v12, v2, v5

    aput v13, v1, v5

    aput-object v10, v7, v5

    :cond_75
    :goto_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 217
    :cond_78
    new-array v8, v9, [Lcom/android/server/wm/Task;

    .line 218
    new-array v10, v9, [Lcom/android/server/wm/ActivityRecord;

    .line 220
    new-array v11, v9, [I

    .line 221
    aput v5, v11, v3

    .line 222
    aput v6, v11, v5

    .line 227
    iget-object v6, v0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move v12, v3

    :goto_89
    if-ge v12, v9, :cond_bc

    .line 229
    iget-object v13, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    aget v14, v11, v12

    .line 230
    invoke-virtual {v13, v14}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v13

    aput-object v13, v8, v12

    if-eqz v13, :cond_aa

    .line 232
    invoke-virtual {v13, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 233
    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v13

    goto :goto_ab

    :cond_aa
    move-object v13, v4

    :goto_ab
    if-eqz v13, :cond_b9

    .line 234
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_b9

    .line 235
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    aput-object v13, v10, v12

    :cond_b9
    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    .line 238
    :cond_bc
    monitor-exit v6
    :try_end_bd
    .catchall {:try_start_85 .. :try_end_bd} :catchall_21a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 242
    new-array v6, v9, [Ljava/lang/String;

    .line 243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v11, v3

    move v12, v11

    move v13, v12

    :goto_ca
    if-ge v11, v9, :cond_12e

    .line 247
    iget-object v14, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v16, v2, v11

    const/16 v17, 0x0

    aget v18, v1, v11

    const/16 v19, 0x0

    move-object/from16 v14, p2

    iget v3, v14, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    move/from16 v20, v3

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_129

    .line 249
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_129

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_129

    const-string v5, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 251
    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f9

    goto :goto_129

    :cond_f9
    add-int/lit8 v12, v12, 0x1

    .line 257
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v3, v6, v11

    .line 258
    aget-object v5, v10, v11

    if-eqz v5, :cond_129

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 259
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 260
    aget-object v3, v10, v11

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    aput-object v4, v2, v11

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v3

    aget-object v5, v7, v11

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    :cond_129
    :goto_129
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_ca

    :cond_12e
    const/4 v3, 0x0

    :goto_12f
    if-ge v3, v9, :cond_1d9

    .line 270
    aget-object v5, v2, v3

    if-eqz v5, :cond_1d4

    aget-object v5, v6, v3

    if-nez v5, :cond_13b

    goto/16 :goto_1d4

    .line 273
    :cond_13b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v7, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    aget-object v10, v6, v3

    aget v11, v1, v3

    invoke-virtual {v7, v10, v11, v5}, Lcom/android/server/wm/MultiTaskingController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 276
    new-instance v7, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 278
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    :goto_159
    if-ltz v7, :cond_18b

    .line 279
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 280
    iget v11, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_171

    .line 281
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_188

    .line 285
    :cond_171
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_188

    .line 286
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v11

    if-nez v11, :cond_184

    .line 287
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_188

    .line 288
    :cond_184
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18c

    :cond_188
    :goto_188
    add-int/lit8 v7, v7, -0x1

    goto :goto_159

    :cond_18b
    move-object v10, v4

    :goto_18c
    if-nez v10, :cond_1a7

    const/4 v7, 0x0

    .line 294
    :goto_18f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_1a7

    .line 295
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    .line 297
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_1a4

    move-object v10, v11

    goto :goto_1a7

    :cond_1a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_18f

    :cond_1a7
    :goto_1a7
    if-nez v10, :cond_1b0

    .line 315
    aget-object v5, v2, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    goto :goto_1d4

    .line 318
    :cond_1b0
    aget-object v5, v2, v3

    iget v7, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 319
    aget-object v5, v2, v3

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 320
    aget-object v5, v2, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    .line 321
    iget v5, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d5

    :cond_1d4
    :goto_1d4
    const/4 v7, 0x0

    :goto_1d5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12f

    :cond_1d9
    const/4 v7, 0x0

    if-ne v12, v9, :cond_214

    .line 325
    aget-object v1, v6, v7

    const/4 v2, 0x1

    aget-object v3, v6, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 327
    :try_start_1e7
    iget-object v1, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    aget-object v2, v6, v7
    :try_end_1f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e7 .. :try_end_1f1} :catch_214

    const/16 v3, 0x80

    .line 328
    :try_start_1f3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_211

    .line 329
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_211

    const-string v2, "com.samsung.android.multiwindow.support.pair.shortcut"
    :try_end_1ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f3 .. :try_end_1ff} :catch_211

    const/4 v3, 0x0

    .line 330
    :try_start_200
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_215

    .line 331
    iget-object v0, v0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;
    :try_end_208
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_200 .. :try_end_208} :catch_215

    const/4 v1, 0x1

    :try_start_209
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_210
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_209 .. :try_end_210} :catch_216

    return v3

    :catch_211
    :cond_211
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto :goto_216

    :catch_214
    :cond_214
    move v3, v7

    :catch_215
    :cond_215
    const/4 v1, 0x1

    :catch_216
    :goto_216
    if-eq v13, v9, :cond_219

    move v3, v1

    :cond_219
    return v3

    :catchall_21a
    move-exception v0

    .line 238
    :try_start_21b
    monitor-exit v6
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_21a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)Z
    .registers 40

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v7, v1, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    aput-object v4, v7, v3

    aput-object v4, v7, v5

    aput-object v4, v7, v6

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 397
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_1f

    .line 398
    new-instance v10, Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 399
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v10

    if-nez v10, :cond_47

    goto :goto_1f

    .line 403
    :cond_47
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v10

    .line 404
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v11

    .line 405
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v12}, Lcom/android/server/am/PendingIntentRecord;->getUserId()I

    if-ne v10, v5, :cond_67

    aput-object v11, v2, v3

    aput-object v9, v7, v3

    goto :goto_1f

    :cond_67
    if-ne v10, v6, :cond_1f

    aput-object v11, v2, v5

    aput-object v9, v7, v5

    goto :goto_1f

    :cond_6e
    new-array v8, v1, [Lcom/android/server/wm/Task;

    new-array v9, v1, [Lcom/android/server/wm/Task;

    new-array v10, v1, [I

    aput v5, v10, v3

    aput v6, v10, v5

    move v6, v3

    :goto_79
    if-ge v6, v1, :cond_a8

    .line 434
    iget-object v11, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    aget v12, v10, v6

    .line 435
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v11

    aput-object v11, v8, v6

    if-eqz v11, :cond_9a

    .line 437
    invoke-virtual {v11, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 438
    aget-object v11, v8, v6

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v11

    goto :goto_9b

    :cond_9a
    move-object v11, v4

    :goto_9b
    if-eqz v11, :cond_a5

    .line 439
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_a5

    .line 440
    aput-object v11, v9, v6

    :cond_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    :cond_a8
    new-array v6, v1, [Lcom/android/server/wm/ActivityRecord;

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v10, v3

    move v11, v10

    :goto_b1
    if-ge v10, v1, :cond_140

    .line 449
    aget-object v12, v2, v10

    if-nez v12, :cond_bb

    :goto_b7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13b

    .line 453
    :cond_bb
    iget-object v13, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13, v12}, Lcom/android/server/wm/MultiTaskingController;->getLaunchModeSingleInstancePerTask(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v24

    if-eqz v24, :cond_13b

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 459
    :try_start_cb
    new-instance v14, Lcom/android/server/wm/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v22, v2, v10

    const/16 v23, 0x0

    .line 460
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v16, v2, v10

    .line 461
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_f2

    move/from16 v29, v5

    goto :goto_f4

    :cond_f2
    move/from16 v29, v3

    :goto_f4
    const/16 v30, 0x0

    iget-object v3, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v31, v3

    invoke-direct/range {v15 .. v37}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    :try_end_10c
    .catchall {:try_start_cb .. :try_end_10c} :catchall_136

    .line 464
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    aput-object v14, v6, v10

    .line 467
    aget-object v3, v9, v10

    if-eqz v3, :cond_13b

    iget-object v12, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 468
    invoke-virtual {v12, v14, v3}, Lcom/android/server/wm/MultiTaskingController;->hasMatchedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 469
    aget-object v3, v9, v10

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    aput-object v4, v2, v10

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v3

    aget-object v12, v7, v10

    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b7

    :catchall_136
    move-exception v0

    .line 464
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v0

    :cond_13b
    :goto_13b
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto/16 :goto_b1

    .line 477
    :cond_140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_146
    if-ge v7, v1, :cond_205

    .line 481
    aget-object v9, v2, v7

    if-eqz v9, :cond_201

    aget-object v9, v6, v7

    if-nez v9, :cond_152

    goto/16 :goto_201

    .line 484
    :cond_152
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 485
    aget-object v10, v2, v7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 486
    iget-object v12, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    aget-object v13, v6, v7

    invoke-virtual {v12, v13, v9}, Lcom/android/server/wm/MultiTaskingController;->findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 487
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_17b

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17b

    .line 489
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_201

    .line 493
    :cond_17b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_180
    if-ltz v10, :cond_1b2

    .line 494
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    .line 495
    iget v13, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_198

    .line 496
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1af

    .line 500
    :cond_198
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1af

    .line 501
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-static {v13}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v13

    if-nez v13, :cond_1b3

    .line 502
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    if-ne v13, v5, :cond_1af

    goto :goto_1b3

    :cond_1af
    :goto_1af
    add-int/lit8 v10, v10, -0x1

    goto :goto_180

    :cond_1b2
    move-object v12, v4

    :cond_1b3
    :goto_1b3
    if-nez v12, :cond_1ce

    const/4 v10, 0x0

    .line 508
    :goto_1b6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_1ce

    .line 509
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Task;

    .line 511
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_1cb

    move-object v12, v13

    goto :goto_1ce

    :cond_1cb
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b6

    :cond_1ce
    :goto_1ce
    if-nez v12, :cond_1e7

    const/4 v10, 0x0

    .line 519
    :goto_1d1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_1e7

    .line 520
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Task;

    .line 521
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1e6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d1

    :cond_1e6
    move-object v12, v13

    :cond_1e7
    if-nez v12, :cond_1f1

    .line 529
    aget-object v9, v2, v7

    const/high16 v10, 0x8000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_201

    .line 532
    :cond_1f1
    aget-object v9, v2, v7

    iget v10, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 533
    iget v9, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_201
    :goto_201
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_146

    :cond_205
    if-eq v11, v1, :cond_209

    move v3, v5

    goto :goto_20a

    :cond_209
    const/4 v3, 0x0

    :goto_20a
    return v3
.end method

.method public adjustStartTaskAndIntent(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 15

    .line 345
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v9, v0

    move v10, v1

    move v11, v2

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 346
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_35

    .line 347
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v9

    .line 348
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v3}, Lcom/android/server/am/PendingIntentRecord;->getUserId()I

    move-result v11

    goto :goto_e

    .line 349
    :cond_35
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 350
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 351
    new-instance v4, Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_4d

    :cond_4c
    move-object v4, v0

    :goto_4d
    if-nez v4, :cond_50

    goto :goto_e

    .line 353
    :cond_50
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v10

    goto :goto_e

    :cond_55
    if-eqz v9, :cond_cb

    if-ne v10, v1, :cond_5b

    goto/16 :goto_cb

    .line 359
    :cond_5b
    iget-object p1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p2, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    move-object v4, v9

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 361
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_cb

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p2, :cond_cb

    const-string v0, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 362
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 364
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_80

    return-void

    .line 367
    :cond_80
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 368
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object p0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, v11, p2}, Lcom/android/server/wm/MultiTaskingController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 370
    new-instance p0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move p0, v2

    .line 371
    :goto_99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_c7

    .line 372
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    .line 373
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v10, :cond_aa

    goto :goto_c4

    .line 376
    :cond_aa
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 378
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, p0}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    return-void

    :cond_c4
    :goto_c4
    add-int/lit8 p0, p0, 0x1

    goto :goto_99

    :cond_c7
    const/4 p0, 0x1

    .line 384
    invoke-virtual {v9, p0}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public final evictChildTasksIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .registers 6

    .line 132
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 134
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_23

    .line 135
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 136
    :cond_23
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 138
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3e

    goto :goto_8

    .line 141
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 142
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 143
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 145
    :cond_58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_5c

    .line 148
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 149
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 150
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v2, :cond_83

    goto :goto_5c

    .line 155
    :cond_83
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/high16 v3, -0x80000000

    .line 154
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_5c

    :cond_91
    return-void
.end method

.method public handleAutoPipIfNeededLocked(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_58

    .line 89
    :cond_16
    invoke-static {v1}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 90
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v2, :cond_21

    goto :goto_58

    .line 93
    :cond_21
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/AppPairController;->hasSamePackageInStartIntentsLocked(Landroid/window/WindowContainerTransaction;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "AppPairController"

    if-eqz p0, :cond_40

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAutoPipIfNeededLocked: failed, reason=same_package, r="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    const/4 p0, 0x0

    .line 97
    invoke-static {v0, v1, p0, p0}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAutoPipIfNeededLocked: enable autoPip, r="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method public final hasSamePackageInStartIntentsLocked(Landroid/window/WindowContainerTransaction;Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 168
    :cond_4
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 170
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 171
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_c

    .line 172
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    :cond_35
    return p0
.end method

.method public initialize()V
    .registers 3

    .line 74
    new-instance v0, Lcom/android/server/wm/AppPairController$H;

    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppPairController$H;-><init>(Lcom/android/server/wm/AppPairController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    return-void
.end method

.method public onStopFreezingDisplayLocked()V
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopFreezingDisplayLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPairController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public setEvictChildTasksRunnable(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEvictChildTasksRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPairController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_2c

    return-void

    .line 112
    :cond_2c
    new-instance v0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppPairController;Landroid/window/WindowContainerTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mEvictChildTasksRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/AppPairController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method
