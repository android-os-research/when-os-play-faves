.class public Lcom/android/server/biometrics/sensors/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PerformanceTracker"

.field public static sTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAllUsersInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;",
            ">;"
        }
    .end annotation
.end field

.field public mHALDeathCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;
    .registers 4

    const-class v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 34
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 37
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 38
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    invoke-direct {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;-><init>()V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    :cond_20
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return-void
.end method

.method public final createUserEntryIfNecessary(I)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 73
    new-instance v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>(Lcom/android/server/biometrics/sensors/PerformanceTracker$Info-IA;)V

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public getAcceptCryptoForUser(I)I
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getAcceptForUser(I)I
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getAcquireCryptoForUser(I)I
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getAcquireForUser(I)I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getHALDeathCount()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return p0
.end method

.method public getPermanentLockoutForUser(I)I
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getRejectCryptoForUser(I)I
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getRejectForUser(I)I
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getTimedLockoutForUser(I)I
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public incrementAcquireForUser(IZ)V
    .registers 3

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 105
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_22

    .line 107
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    :goto_22
    return-void
.end method

.method public incrementAuthForUser(IZ)V
    .registers 3

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 85
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_22

    .line 87
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    :goto_22
    return-void
.end method

.method public incrementCryptoAuthForUser(IZ)V
    .registers 3

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 95
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_22

    .line 97
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    :goto_22
    return-void
.end method

.method public incrementHALDeathCount()V
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return-void
.end method

.method public incrementPermanentLockoutForUser(I)V
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 120
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    return-void
.end method

.method public incrementTimedLockoutForUser(I)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 114
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    return-void
.end method

.method public semGetNoMatchReason(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public semGetQualityCryptoForUser(I)I
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public semGetQualityForUser(I)I
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public semGetTotalAccept()I
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_37

    .line 207
    :try_start_a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 208
    iget v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    iget v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1b

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_1b
    move-exception p0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetTotalAccept: error msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerformanceTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v2
.end method

.method public semGetTotalQuality()I
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_37

    .line 235
    :try_start_a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 236
    iget v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    iget v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1b

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_1b
    move-exception p0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetTotalQuality: error msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerformanceTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v2
.end method

.method public semGetTotalReject()I
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_37

    .line 221
    :try_start_a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 222
    iget v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    iget v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1b

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_1b
    move-exception p0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetTotalReject: error msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerformanceTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v2
.end method

.method public semIncrementNoMatchReason(II)V
    .registers 5

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 183
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4c

    .line 185
    :cond_26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_4c
    return-void
.end method

.method public semIncrementQualityForUser(IZ)V
    .registers 3

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 173
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    goto :goto_22

    .line 175
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    :goto_22
    return-void
.end method
