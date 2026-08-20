.class public Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
.super Ljava/lang/Object;
.source "MagnificationScaleProvider.java"


# static fields
.field public static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLock:Ljava/lang/Object;

.field public final mUsersScales:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WF0wUmC7JiCHZkFry_vB8DdT2l4(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->lambda$putScale$0(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static constrainScale(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 137
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$putScale$0(F)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    const-string v1, "accessibility_display_magnification_scale"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method


# virtual methods
.method public getScale(I)F
    .registers 4

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p1, :cond_13

    .line 82
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accessibility_display_magnification_scale"

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0

    .line 86
    :cond_13
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v1

    return p0

    :catchall_2a
    move-exception p0

    .line 88
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final getScalesWithCurrentUser()Landroid/util/SparseArray;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_18

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    return-object v0
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 120
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 122
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onUserChanged(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 107
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public putScale(FI)V
    .registers 4

    if-nez p2, :cond_f

    .line 63
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    monitor-exit v0

    :goto_1e
    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnificationScaleProvider{mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Scale on the default display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "Scales on non-default displays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_36
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method
