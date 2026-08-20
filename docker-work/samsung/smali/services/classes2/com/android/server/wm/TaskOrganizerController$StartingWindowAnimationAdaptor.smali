.class public Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartingWindowAnimationAdaptor"
.end annotation


# instance fields
.field public mAnimationLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "StartingWindowAnimationAdaptor mCapturedLeash="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 486
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

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

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    :cond_7
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5

    .line 462
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-void
.end method
