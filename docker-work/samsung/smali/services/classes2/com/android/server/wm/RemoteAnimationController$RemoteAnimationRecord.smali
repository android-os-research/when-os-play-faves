.class public Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimationRecord"
.end annotation


# instance fields
.field public mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field public mMode:I

.field public final mStartBounds:Landroid/graphics/Rect;

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;

.field public final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 18

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p6

    .line 548
    iput-object v8, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    .line 541
    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const/4 v0, 0x2

    .line 545
    iput v0, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    move-object v0, p2

    .line 549
    iput-object v0, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v9, :cond_51

    .line 551
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 552
    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 554
    iget-object v0, v8, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 555
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 556
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 559
    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_66

    .line 563
    :cond_51
    new-instance v9, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v9

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 565
    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method public createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_11

    goto :goto_1a

    .line 575
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .registers 1

    .line 584
    iget p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    return p0
.end method

.method public hasAnimatingParent()Z
    .registers 5

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_2a

    .line 592
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 593
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 592
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public setMode(I)V
    .registers 2

    .line 580
    iput p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    return-void
.end method
