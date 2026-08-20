.class Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskAnimationAdapter"
.end annotation


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mFinishOverlay:Landroid/view/SurfaceControl;

.field public mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public final mIsRecentTaskInvisible:Z

.field public mLastAnimationType:I

.field public final mLocalBounds:Landroid/graphics/Rect;

.field public mSnapshotOverlay:Landroid/view/SurfaceControl;

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFinishOverlay(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishOverlay:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFinishTransaction(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V
    .registers 5

    .line 1350
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1340
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 1342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 1351
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1352
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 1353
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1356
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 1357
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1358
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method


# virtual methods
.method public createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;
    .registers 25

    move-object/from16 v0, p0

    .line 1372
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 1374
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_11
    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 1381
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    goto :goto_1a

    :cond_19
    move-object v4, v3

    :goto_1a
    if-nez v4, :cond_1d

    return-object v3

    .line 1386
    :cond_1d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 1387
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    .line 1386
    invoke-virtual {v3, v5, v6, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v3

    .line 1387
    invoke-virtual {v3}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 1388
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1391
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 1392
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    .line 1391
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v3

    .line 1393
    invoke-static {v11}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    move/from16 v5, p2

    if-eq v5, v3, :cond_5d

    move v7, v5

    goto :goto_6c

    .line 1399
    :cond_5d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v5

    if-ne v3, v5, :cond_6b

    move v7, v2

    goto :goto_6c

    :cond_6b
    move v7, v4

    :goto_6c
    if-gez p1, :cond_74

    .line 1403
    iget-object v2, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    move v6, v2

    goto :goto_76

    :cond_74
    move/from16 v6, p1

    .line 1405
    :goto_76
    new-instance v2, Landroid/view/RemoteAnimationTarget;

    iget-object v8, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1406
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    new-instance v3, Landroid/graphics/Rect;

    move-object v10, v3

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1407
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v12

    new-instance v3, Landroid/graphics/Point;

    move-object v13, v3

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1408
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    iget-boolean v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    move/from16 v17, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1409
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    .line 1410
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v21

    move-object v5, v2

    invoke-direct/range {v5 .. v21}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    iput-object v2, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1555
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_3d

    .line 1557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_45

    .line 1560
    :cond_3d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Target: null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    :goto_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsRecentTaskInvisible="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLocalBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFinishTransaction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    const-wide v0, 0x10b00000002L

    .line 1571
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1572
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_15

    const-wide v2, 0x10b00000001L

    .line 1573
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1575
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDurationHint()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSnapshotOverlay()Landroid/view/SurfaceControl;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1507
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    .line 1541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isAutoPipEnabled()Z
    .registers 3

    .line 1546
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_22

    iget-boolean v1, v0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    if-eqz v1, :cond_22

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_22

    .line 1548
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1549
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 1531
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 p1, 0x2

    const-string/jumbo v0, "taskAnimationAdapterCanceled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public onCleanup()V
    .registers 5

    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v1, :cond_99

    .line 1456
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1457
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_31

    iget v1, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1467
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3c

    .line 1468
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1472
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 1474
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Task;->setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 1475
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1477
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipTransaction(Landroid/window/PictureInPictureSurfaceTransaction;)V

    :cond_6d
    const/4 v1, 0x0

    .line 1480
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 1481
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishOverlay:Landroid/view/SurfaceControl;

    .line 1482
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v1

    if-eq v0, v1, :cond_a4

    .line 1489
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1490
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->isAutoPipEnabled()Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_a4

    .line 1495
    :cond_92
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    goto :goto_a4

    .line 1498
    :cond_99
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p0

    if-nez p0, :cond_a4

    .line 1501
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public onRemove()V
    .registers 3

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_16

    .line 1443
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 1444
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1445
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 1446
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 1448
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public setSnapshotOverlay(Landroid/window/TaskSnapshot;)V
    .registers 11

    .line 1416
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1421
    :cond_7
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 1422
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    const-string v2, "RecentTaskScreenshotSurface"

    .line 1423
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TaskAnimationAdapter.setSnapshotOverlay"

    .line 1424
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1425
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1426
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1427
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1428
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1430
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v2, v1

    .line 1431
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 1432
    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 1433
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    .line 1434
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v8

    .line 1435
    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 1436
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 1437
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 7

    .line 1519
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1520
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1521
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1523
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1524
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 1525
    iput p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    return-void
.end method
