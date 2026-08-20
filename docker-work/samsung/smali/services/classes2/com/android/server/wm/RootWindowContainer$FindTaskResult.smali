.class public Lcom/android/server/wm/RootWindowContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public isDocument:Z

.field public mActivityType:I

.field public mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

.field public mIdealRecord:Lcom/android/server/wm/ActivityRecord;

.field public mInfo:Landroid/content/pm/ActivityInfo;

.field public mIntent:Landroid/content/Intent;

.field public mTaskAffinity:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 398
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 399
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 400
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 401
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 403
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 461
    :cond_a
    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1ba

    .line 464
    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_1ba

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-ne v7, v8, :cond_1ba

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_24

    goto/16 :goto_1ba

    .line 469
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v7

    iget v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    invoke-static {v7, v9}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v7

    if-nez v7, :cond_45

    .line 471
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_44

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x3cecb894

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v2, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    return v2

    .line 475
    :cond_45
    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v7, :cond_5e

    .line 476
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x78e5a662

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v2, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    return v2

    .line 481
    :cond_5e
    iget-object v7, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 482
    iget-object v9, v1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v7, :cond_70

    .line 485
    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_70

    .line 487
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    :goto_6e
    move v10, v5

    goto :goto_7f

    :cond_70
    if-eqz v9, :cond_7d

    .line 488
    invoke-virtual {v9}, Landroid/content/Intent;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 490
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    goto :goto_6e

    :cond_7d
    move v10, v2

    move-object v7, v6

    .line 497
    :goto_7f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAliasManaged()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_96

    .line 498
    iget-object v11, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v11

    if-eq v11, v12, :cond_96

    .line 500
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, v11, :cond_95

    .line 501
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v5

    :cond_95
    return v2

    .line 508
    :cond_96
    iget-object v11, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v11

    if-eq v11, v12, :cond_a6

    .line 510
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, v11, :cond_a5

    .line 511
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v5

    :cond_a5
    return v2

    .line 519
    :cond_a6
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v11, :cond_ed

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v14, :cond_d3

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    goto :goto_d5

    :cond_d3
    const-string v14, ""

    :goto_d5
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v11, v6, v2

    aput-object v12, v6, v5

    aput-object v13, v6, v4

    aput-object v14, v6, v8

    const v8, 0x4712c918

    const/4 v11, 0x0

    invoke-static {v15, v8, v2, v11, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :cond_ed
    iget-object v6, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const v8, 0x5cd91d99

    const v11, 0x741b271a

    if-eqz v6, :cond_130

    iget-object v12, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v6, v12}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v6

    if-nez v6, :cond_130

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 525
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    .line 526
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v1, :cond_111

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x0

    invoke-static {v1, v11, v2, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :cond_111
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v1, :cond_12d

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v6, v4, v5

    const/4 v1, 0x0

    invoke-static {v7, v8, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_12d
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v5

    :cond_130
    if-eqz v9, :cond_175

    .line 531
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_175

    .line 532
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v6, v9}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v6

    if-nez v6, :cond_175

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 533
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    .line 534
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v1, :cond_156

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x0

    invoke-static {v1, v11, v2, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_156
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v1, :cond_172

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v6, v4, v5

    const/4 v1, 0x0

    invoke-static {v7, v8, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_172
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v5

    .line 538
    :cond_175
    iget-boolean v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    if-nez v4, :cond_1a4

    if-nez v10, :cond_1a4

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_1a4

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_1a4

    iget-object v4, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1a4

    .line 541
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 543
    iget-boolean v1, v3, Lcom/android/server/wm/ActivityRecord;->mAliasChild:Z

    if-eqz v1, :cond_194

    return v2

    .line 549
    :cond_194
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v1, :cond_1a1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x7989881f

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_1a1
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1b9

    .line 556
    :cond_1a4
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_1b9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x2e31a2c5

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x0

    invoke-static {v1, v3, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b9
    :goto_1b9
    return v2

    .line 466
    :cond_1ba
    :goto_1ba
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_1d5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x5def8135

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    const/4 v0, 0x0

    invoke-static {v3, v6, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d5
    return v2
.end method

.method public process(Lcom/android/server/wm/WindowContainer;)V
    .registers 10

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 413
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 415
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v2

    :goto_30
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_42

    :cond_41
    move-object v0, v3

    :goto_42
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 420
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x30904169

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v4, v7, v1

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_61
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public test(Lcom/android/server/wm/Task;)Z
    .registers 7

    .line 427
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 428
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v1

    .line 427
    invoke-static {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 429
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x163d3536

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    return v3

    .line 433
    :cond_24
    iget-object v0, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3d

    .line 435
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p0, :cond_3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x318592b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    return v3

    .line 438
    :cond_3d
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-eq v0, v4, :cond_58

    .line 440
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p0, :cond_57

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x17cd80ad

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    return v3

    .line 444
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return v2

    .line 449
    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_71

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_71

    goto :goto_72

    :cond_71
    move v2, v3

    :goto_72
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 384
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->test(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
