.class public Lcom/android/server/display/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HbmObserver"
.end annotation


# instance fields
.field public final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmActive:Landroid/util/SparseBooleanArray;

.field public final mHbmMode:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field public mRefreshRateInHbmHdr:I

.field public mRefreshRateInHbmSunlight:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .registers 6

    .line 3144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3134
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 3135
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 3145
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 3146
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 3147
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 3148
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "   HbmObserver"

    .line 3273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getRefreshRateInHbmHdr()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3174
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3166
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return p0
.end method

.method public observe()V
    .registers 5

    .line 3152
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 3153
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 3155
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3156
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public final onDeviceConfigRefreshRateInHbmChanged()V
    .registers 5

    .line 3229
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3231
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget v3, v0, v2

    .line 3232
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmHdrChanged(I)V
    .registers 3

    .line 3191
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-eq p1, v0, :cond_9

    .line 3192
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 3193
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_9
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmSunlightChanged(I)V
    .registers 3

    .line 3181
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-eq p1, v0, :cond_9

    .line 3182
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 3183
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_9
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5

    .line 3209
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3215
    :cond_9
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    if-eqz v1, :cond_17

    .line 3216
    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3218
    :goto_18
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_29

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 3219
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v0, v2, :cond_29

    return-void

    .line 3223
    :cond_29
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3224
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3225
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 3202
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 3203
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3204
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public final recalculateVotesForDisplay(I)V
    .registers 8

    .line 3239
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_71

    .line 3240
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 3241
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_45

    .line 3244
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-lez v0, :cond_1e

    int-to-float v1, v0

    int-to-float v0, v0

    .line 3245
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    goto :goto_71

    .line 3248
    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3249
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v0

    :goto_24
    if-eqz v0, :cond_71

    .line 3250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_71

    .line 3251
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 3252
    iget v5, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v5, v3, :cond_42

    .line 3253
    iget-object v0, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    move-object v2, v0

    goto :goto_71

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_45
    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 3259
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-lez v1, :cond_53

    int-to-float v0, v1

    int-to-float v1, v1

    .line 3263
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    goto :goto_71

    .line 3265
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected HBM mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for display ID "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_71
    :goto_71
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v0, 0x4

    invoke-interface {p0, p1, v0, v2}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
