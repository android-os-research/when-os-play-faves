.class public Lcom/android/server/wm/SurfaceFreezer$Snapshot;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceFreezer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Snapshot"
.end annotation


# instance fields
.field public mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field public mChangeTransitMode:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    .end annotation
.end field

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/server/wm/SurfaceFreezer;


# direct methods
.method public static synthetic $r8$lambda$V6nuYzcC-CCueHi3OcKeQGN9c-g(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->lambda$startAnimation$0(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmChangeTransitMode(Lcom/android/server/wm/SurfaceFreezer$Snapshot;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mChangeTransitMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SurfaceFreezer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl;)V
    .registers 11

    .line 340
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mChangeTransitMode:I

    .line 342
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceFreezer;->isThumbnailOnlyChangeTransition()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v1

    .line 343
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 344
    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p4

    .line 347
    :cond_20
    invoke-virtual {p1, p3}, Lcom/android/server/wm/SurfaceFreezer;->createFromHardwareBufferInner(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 349
    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "snapshot anim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 351
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 352
    invoke-virtual {v2, p4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 353
    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v2

    invoke-virtual {p4, v2}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    const-string v2, "SurfaceFreezer.Snapshot"

    .line 354
    invoke-virtual {p4, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 355
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 356
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 358
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_81

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x27df7779

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_81
    iget-object p4, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 361
    iget-object p4, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 362
    iget-object p3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 366
    iget-object p3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p4, 0x7fffffff

    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 369
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceFreezer;->isThumbnailOnlyChangeTransition()Z

    move-result p3

    if-eqz p3, :cond_af

    .line 370
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_af
    return-void
.end method

.method public static synthetic lambda$startAnimation$0(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 6

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    const/4 v2, 0x0

    .line 410
    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v1, :cond_2d

    .line 412
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mChangeTransitMode:I

    if-eqz v0, :cond_2d

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmWmService(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceFreezer;->-$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ChangeTransitionController;->onChangeTransitionCancelled(Lcom/android/server/wm/Task;)V

    :cond_2d
    if-nez p2, :cond_32

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    :cond_32
    return-void
.end method

.method public destroy(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 379
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;I)V
    .registers 5

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 393
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_f

    const/4 p2, 0x0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void

    .line 398
    :cond_f
    new-instance p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0, p1, p3, p0}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method
