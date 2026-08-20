.class public Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchParams"
.end annotation


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDexDualBounds:Landroid/graphics/Rect;

.field public final mDexStandAloneBounds:Landroid/graphics/Rect;

.field public mDexWindowingMode:I

.field public mDisplayDeviceType:I

.field public final mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

.field public mOrientation:I

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexDualBounds:Landroid/graphics/Rect;

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    .line 281
    new-instance v0, Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-direct {v0}, Lcom/android/server/wm/FreeformPersistBoundsParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 355
    :cond_12
    check-cast p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 357
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v2, v3, :cond_1b

    return v1

    .line 358
    :cond_1b
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v2, v3, :cond_22

    return v1

    .line 360
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 361
    invoke-virtual {v2, v3}, Lcom/android/server/wm/FreeformPersistBoundsParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 365
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_38

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3e

    :cond_38
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-nez p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public hasPreferredTaskDisplayArea()Z
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasValidFreeformPersistBounds()Z
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformPersistBoundsParams;->isValid()Z

    move-result p0

    return p0
.end method

.method public hasWindowingMode()Z
    .registers 1

    .line 337
    iget p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 371
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_15

    .line 372
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformPersistBoundsParams;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-nez v0, :cond_12

    iget p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public reset()V
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 291
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 302
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformPersistBoundsParams;->reset()V

    return-void
.end method

.method public set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 311
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 314
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformPersistBoundsParams;->set(Lcom/android/server/wm/FreeformPersistBoundsParams;)V

    return-void
.end method
