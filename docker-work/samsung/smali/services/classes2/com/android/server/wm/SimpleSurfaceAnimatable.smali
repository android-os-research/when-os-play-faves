.class public Lcom/android/server/wm/SimpleSurfaceAnimatable;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    }
.end annotation


# instance fields
.field public final mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public final mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public final mHeight:I

.field public final mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public final mPendingTransaction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mShouldDeferAnimationFinish:Z

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mSyncTransaction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmWidth(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    .line 55
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmHeight(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    .line 56
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmShouldDeferAnimationFinish(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    .line 57
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmAnimationLeashParent(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 58
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 59
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmParentSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 60
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmCommitTransactionRunnable(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 61
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmAnimationLeashFactory(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 62
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationLeashCreated(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 63
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationLeashLost(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 64
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmSyncTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    .line 65
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmPendingTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    .line 66
    invoke-static {p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->-$$Nest$fgetmOnAnimationFinished(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceHeight()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .registers 1

    .line 124
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    return p0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Builder;

    return-object p0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    if-eqz p0, :cond_7

    .line 88
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    if-eqz p0, :cond_7

    .line 96
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mOnAnimationFinished:Ljava/util/function/Consumer;

    if-eqz v0, :cond_7

    .line 135
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 137
    :cond_7
    iget-boolean p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mShouldDeferAnimationFinish:Z

    return p0
.end method
