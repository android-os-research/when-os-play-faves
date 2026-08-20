.class public final Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/view/accessibility/MagnificationAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisableMagnificationCallback"
.end annotation


# instance fields
.field public final mAnimate:Z

.field public final mCurrentCenter:Landroid/graphics/PointF;

.field public final mCurrentMode:I

.field public final mCurrentScale:F

.field public final mDisplayId:I

.field public mExpired:Z

.field public final mTargetMode:I

.field public final mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V
    .registers 8

    .line 815
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 804
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 811
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 816
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    .line 817
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 818
    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    xor-int/lit8 p2, p4, 0x3

    .line 819
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 820
    iput p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    .line 821
    invoke-virtual {p1, p6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 822
    iput-boolean p7, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    return-void
.end method


# virtual methods
.method public final adjustCurrentCenterIfNeededLocked()V
    .registers 4

    .line 870
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 873
    :cond_6
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 874
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 875
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_25

    return-void

    .line 878
    :cond_25
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 879
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final applyMagnificationModeLocked(I)V
    .registers 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    .line 904
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 905
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 906
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result p1

    if-nez p1, :cond_16

    .line 907
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 909
    :cond_16
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_44

    .line 913
    :cond_27
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    .line 915
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    if-eqz p0, :cond_3e

    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    move-object v5, p0

    const/4 v6, 0x0

    .line 913
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    :goto_44
    return-void
.end method

.method public onResult(Z)V
    .registers 8

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 828
    :try_start_7
    invoke-static {}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$sfgetSEC_DEBUG()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "MagnificationController"

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_24
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    if-eqz v1, :cond_2a

    .line 832
    monitor-exit v0

    return-void

    .line 834
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 835
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-eqz p1, :cond_44

    .line 838
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->adjustCurrentCenterIfNeededLocked()V

    .line 839
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    goto :goto_96

    .line 846
    :cond_44
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 847
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 848
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_96

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 849
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v2

    if-nez v2, :cond_96

    .line 850
    new-instance v2, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 852
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 853
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 854
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 855
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 856
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 857
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 859
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 862
    :cond_96
    :goto_96
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    .line 863
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    if-eqz v1, :cond_a8

    .line 864
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-interface {v1, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 866
    :cond_a8
    monitor-exit v0

    return-void

    :catchall_aa
    move-exception p0

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_7 .. :try_end_ac} :catchall_aa

    throw p0
.end method

.method public restoreToCurrentMagnificationMode()V
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 884
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    if-eqz v1, :cond_d

    .line 885
    monitor-exit v0

    return-void

    .line 887
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 888
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 889
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    .line 890
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$mupdateMagnificationButton(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    .line 891
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    if-eqz v1, :cond_34

    .line 892
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 894
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public setExpiredAndRemoveFromListLocked()V
    .registers 3

    const/4 v0, 0x1

    .line 898
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->-$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method
