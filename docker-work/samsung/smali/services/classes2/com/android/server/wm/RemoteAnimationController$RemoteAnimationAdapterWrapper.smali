.class public Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimationAdapterWrapper"
.end annotation


# instance fields
.field public mAnimationType:I

.field public mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mLocalBounds:Landroid/graphics/Rect;

.field public mOuterRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field public final mPosition:Landroid/graphics/Point;

.field public final mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationType(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .line 646
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 638
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    .line 639
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 647
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 648
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 649
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    .line 650
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 651
    invoke-virtual {v1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 724
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "container="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_36

    .line 726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3e

    .line 729
    :cond_36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Target: null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    const-wide v0, 0x10b00000002L

    .line 735
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 736
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_17

    const-wide v2, 0x10b00000001L

    .line 737
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 739
    :cond_17
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 713
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 719
    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 698
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_a

    .line 699
    iput-object v1, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_c

    .line 701
    :cond_a
    iput-object v1, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 703
    :goto_c
    iget-object v0, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez v0, :cond_1f

    iget-object p1, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez p1, :cond_1f

    .line 704
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 706
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 707
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    const-string p1, "allAppAnimationsCanceled"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 10

    .line 662
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x5f30386d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "startAnimation"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 664
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 666
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 669
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_74

    .line 673
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_74

    .line 680
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 684
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_74

    .line 688
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 691
    :goto_74
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 692
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 693
    iput p3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    return-void
.end method
