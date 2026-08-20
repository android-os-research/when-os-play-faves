.class public final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorController$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VibratorController"


# instance fields
.field public volatile mCurrentAmplitude:F

.field public volatile mIsUnderExternalControl:Z

.field public volatile mIsVibrating:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSupportEnhancedSamsungHapticPattern:Z

.field public mSupportFrequencyControl:Z

.field public mSupportHapticEngine:Z

.field public mSupportIntensityControl:Z

.field public mSupportPrebakedHapticPattern:Z

.field public final mVibratorGroup:I

.field public volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field public volatile mVibratorInfoLoadSuccessful:Z

.field public final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVibratorType:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QCkwbzBlJC94o8viAgqFrf72MJU(Lcom/android/server/vibrator/VibratorController;ZLandroid/os/IVibratorStateListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->lambda$notifyListenerOnVibrating$0(ZLandroid/os/IVibratorStateListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .registers 4

    .line 77
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 83
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 84
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 85
    new-instance p2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 86
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 87
    invoke-virtual {p2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 89
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p2, :cond_41

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibratorController"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->initVibratorGroup()I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    return-void
.end method

.method private synthetic lambda$notifyListenerOnVibrating$0(ZLandroid/os/IVibratorStateListener;)V
    .registers 3

    .line 375
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    return-void
.end method


# virtual methods
.method public getAmplitudeList(I)[I
    .registers 2

    .line 775
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAmplitude()F
    .registers 1

    .line 180
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    return p0
.end method

.method public getMotorType()I
    .registers 1

    .line 678
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    return p0
.end method

.method public getNumberOfPrebakedHapticPattern()I
    .registers 1

    .line 749
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNumberOfPrebakedHapticPattern()I

    move-result p0

    return p0
.end method

.method public getVibratorGroup()I
    .registers 1

    .line 682
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    return p0
.end method

.method public getVibratorInfo()Landroid/os/VibratorInfo;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object p0
.end method

.method public hasCapability(J)Z
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final initVibratorGroup()I
    .registers 5

    const/4 v0, 0x1

    .line 643
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 644
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsHapticEngine()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 645
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportIntensityControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsFrequencyControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    .line 647
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsPrebakedHapticPattern()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    .line 648
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsEnhancedSamsungHapticPattern()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    .line 651
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_35

    .line 652
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x5

    .line 653
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const/4 v0, 0x4

    goto :goto_4b

    :cond_2f
    const/16 v0, 0x9

    .line 656
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    :goto_33
    move v0, v3

    goto :goto_4b

    .line 659
    :cond_35
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-eqz v2, :cond_44

    if-eqz v1, :cond_40

    const/4 v0, 0x7

    .line 661
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const/4 v0, 0x3

    goto :goto_4b

    :cond_40
    const/4 v0, 0x6

    .line 664
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_33

    .line 667
    :cond_44
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz v1, :cond_4b

    .line 668
    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_33

    .line 671
    :cond_4b
    :goto_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motor group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getVibrationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VibratorController"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 202
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isSupportEnhancedSamsungHapticPattern()Z
    .registers 1

    .line 702
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    return p0
.end method

.method public isSupportFrequencyControl()Z
    .registers 1

    .line 694
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    return p0
.end method

.method public isSupportHapticEngine()Z
    .registers 1

    .line 686
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    return p0
.end method

.method public isSupportIntensityControl()Z
    .registers 1

    .line 690
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    return p0
.end method

.method public isSupportPrebakedHapticPattern()Z
    .registers 1

    .line 698
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    return p0
.end method

.method public isUnderExternalControl()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    return p0
.end method

.method public isVibrating()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    return p0
.end method

.method public isVibratorInfoLoadSuccessful()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    return p0
.end method

.method public final notifyListenerOnVibrating(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eq v0, p1, :cond_10

    .line 371
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 374
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_10
    return-void
.end method

.method public final notifyStateListener(Landroid/os/IVibratorStateListener;Z)V
    .registers 3

    .line 381
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "VibratorController"

    const-string p2, "Vibrator state listener failed to call"

    .line 383
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public off()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    const/4 v1, 0x0

    .line 341
    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 343
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public on(JJ)J
    .registers 7

    .line 260
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_17

    const/high16 p3, -0x40800000    # -1.0f

    .line 263
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 264
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 266
    :cond_17
    monitor-exit v0

    return-wide p1

    :catchall_19
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public on(Landroid/os/vibrator/PrebakedSegment;J)J
    .registers 12

    .line 280
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    int-to-long v2, v2

    .line 282
    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p1

    int-to-long v4, p1

    move-wide v6, p2

    .line 281
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-lez p3, :cond_22

    const/high16 p3, -0x40800000    # -1.0f

    .line 284
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 285
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 287
    :cond_22
    monitor-exit v0

    return-wide p1

    :catchall_24
    move-exception p0

    .line 288
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public on([Landroid/os/vibrator/PrimitiveSegment;J)J
    .registers 8

    .line 301
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    return-wide v1

    .line 304
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_10
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-lez p3, :cond_22

    const/high16 p3, -0x40800000    # -1.0f

    .line 307
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 308
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 310
    :cond_22
    monitor-exit v0

    return-wide p1

    :catchall_24
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public on([Landroid/os/vibrator/RampSegment;J)J
    .registers 9

    .line 323
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    return-wide v1

    .line 326
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_10
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v3

    .line 328
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-lez p3, :cond_28

    const/high16 p3, -0x40800000    # -1.0f

    .line 330
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 331
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 333
    :cond_28
    monitor-exit v0

    return-wide p1

    :catchall_2a
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public performHapticEngine([II)V
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine([II)V

    const/4 p1, 0x1

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-void
.end method

.method public performPrebakedHapticPattern(JJZ)V
    .registers 12

    .line 744
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    const/4 p1, 0x1

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-void
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 6

    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    .line 106
    :try_start_7
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 p0, 0x0

    .line 107
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 110
    :cond_15
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {p0, p1, v3}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    .line 111
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_20

    const/4 p0, 0x1

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_20
    move-exception p0

    .line 111
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0
.end method

.method public reloadVibratorInfoIfNeeded()V
    .registers 5

    .line 131
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v0, :cond_5

    return-void

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v1, :cond_e

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_e
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    .line 139
    new-instance v2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v2, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 140
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 141
    invoke-virtual {v2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 142
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p0, :cond_41

    const-string p0, "VibratorController"

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed retry of HAL getInfo for vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->off()V

    return-void
.end method

.method public sehPerformEffect(JJLcom/android/server/vibrator/Vibration;Z)J
    .registers 14

    .line 780
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->sehPerformEffect(JJLcom/android/server/vibrator/Vibration;Z)J

    move-result-wide p1

    const/4 p3, 0x1

    .line 781
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-wide p1
.end method

.method public setAmplitude(F)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 242
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    .line 244
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eqz v1, :cond_18

    .line 245
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 247
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setExternalControl(Z)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 216
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 217
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw p0
.end method

.method public setFoldState(Z)V
    .registers 2

    .line 762
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(Z)V

    return-void
.end method

.method public setForceTouchAmplitude(J)V
    .registers 3

    .line 753
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setForceTouchAmplitude(J)V

    return-void
.end method

.method public setFrequencyType(J)V
    .registers 3

    .line 735
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(J)V

    return-void
.end method

.method public setIntensity(J)V
    .registers 3

    .line 726
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    return-void
.end method

.method public setTentState(Z)V
    .registers 2

    .line 771
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setTentState(Z)V

    return-void
.end method

.method public supportHasFeature()Z
    .registers 1

    .line 787
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHasFeature()Z

    move-result p0

    return p0
.end method

.method public supportIntensityControl()Z
    .registers 1

    .line 722
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl()Z

    move-result p0

    return p0
.end method

.method public supportsEnhancedSamsungHapticPattern()Z
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern()Z

    move-result p0

    return p0
.end method

.method public supportsFoldState()Z
    .registers 1

    .line 758
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    move-result p0

    return p0
.end method

.method public supportsFrequencyControl()Z
    .registers 1

    .line 731
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl()Z

    move-result p0

    return p0
.end method

.method public supportsHapticEngine()Z
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    move-result p0

    return p0
.end method

.method public supportsPrebakedHapticPattern()Z
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern()Z

    move-result p0

    return p0
.end method

.method public supportsTentState()Z
    .registers 1

    .line 767
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsTentState()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorController{mVibratorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVibrating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUnderExternalControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 364
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .registers 4

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    :try_start_4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

.method public updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .registers 11

    .line 225
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_17

    .line 230
    :try_start_10
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_27

    .line 232
    :cond_17
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    int-to-long v4, p0

    .line 233
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    int-to-long v6, p0

    .line 232
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 235
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw p0
.end method
