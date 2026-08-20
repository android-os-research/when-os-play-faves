.class public Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SimpleSurfaceAnimatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAnimationLeashFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public mHeight:I

.field public mOnAnimationFinished:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAnimationLeashLost:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public mPendingTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldDeferAnimationFinish:Z

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSyncTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mWidth:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationLeashFactory(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationLeashParent(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommitTransactionRunnable(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationFinished(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationLeashCreated(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationLeashLost(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParentSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldDeferAnimationFinish(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 146
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 155
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 159
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 163
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 166
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3b

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_33

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2b

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 327
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable-IA;)V

    return-object v0

    .line 325
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mSurfaceControl cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mCommitTransactionRunnable cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mAnimationLeashFactory cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mPendingTransactionSupplier cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mSyncTransactionSupplier cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 291
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return-object p0
.end method

.method public setOnAnimationLeashCreated(Ljava/util/function/BiConsumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public setOnAnimationLeashLost(Ljava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setShouldDeferAnimationFinish(ZLjava/util/function/Consumer;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    .line 307
    iput-object p2, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setSyncTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 2

    .line 281
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return-object p0
.end method
