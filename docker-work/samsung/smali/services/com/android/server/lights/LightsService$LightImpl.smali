.class public final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LightImpl"
.end annotation


# instance fields
.field public mBrightnessMode:I

.field public mColor:I

.field public mExtendedBrightness:I

.field public mFlashing:Z

.field public mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

.field public mInitialized:Z

.field public final mIsIDUsingPatternLED:Z

.field public mLastBrightnessMode:I

.field public mLastColor:I

.field public mMode:I

.field public mOffMS:I

.field public mOnMS:I

.field public mUseLowPersistenceForVR:Z

.field public mVrModeEnabled:Z

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static synthetic $r8$lambda$HOo5xvbDNj6nMx4NiLxHGXF9Bcw(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Lvendor/samsung/hardware/light/SehHwLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLightLocked(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;)V
    .registers 4

    .line 398
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 400
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    .line 402
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUsePatternLED(Lcom/android/server/lights/LightsService;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p1, p1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_17

    const/4 p2, 0x4

    if-ne p1, p2, :cond_19

    :cond_17
    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;Lcom/android/server/lights/LightsService$LightImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .registers 1

    .line 716
    iget p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return p0
.end method

.method public final isSystemLight()Z
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p0, p0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-ltz p0, :cond_c

    const/16 v0, 0xa

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public pulse()V
    .registers 3

    const v0, 0xffffff

    const/4 v1, 0x7

    .line 496
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    return-void
.end method

.method public pulse(II)V
    .registers 10

    const-string v0, "LightsService"

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] pulse : lightType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v3, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-enter p0

    .line 508
    :try_start_3c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_48

    const-string p1, "LightsService"

    const-string p2, "[SvcLED] pulse : Not Support"

    .line 509
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 510
    :cond_48
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_6c

    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 512
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    const/4 p1, 0x0

    .line 514
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 515
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    :cond_6c
    :goto_6c
    monitor-exit p0

    return-void

    :catchall_6e
    move-exception p1

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_3c .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public setBrightness(F)V
    .registers 3

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    return-void
.end method

.method public setBrightness(FI)V
    .registers 12

    .line 415
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "LightsService"

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Brightness is not valid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 419
    :cond_1d
    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_46

    :try_start_21
    const-string p2, "LightsService"

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit p0

    return-void

    .line 426
    :cond_46
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int v3, v1, v0

    .line 430
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-eqz v0, :cond_6a

    const/16 v1, 0x9

    if-ne v0, v1, :cond_61

    goto :goto_6a

    :cond_61
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p2

    .line 437
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_83

    :cond_6a
    :goto_6a
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 433
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v0, :cond_74

    const/16 v0, 0x64

    goto :goto_75

    :cond_74
    const/4 v0, 0x1

    :goto_75
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 432
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v8, p2

    .line 434
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIIII)V

    .line 439
    :goto_83
    monitor-exit p0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_21 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public setColor(I)V
    .registers 10

    const-string v0, "LightsService"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] setColor : color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    .line 447
    :try_start_21
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 448
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public setFlashing(IIII)V
    .registers 14

    const-string v0, "LightsService"

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] setFlashing : type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v3, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3c

    const-string v2, "Off"

    goto :goto_5b

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, p2}, Lcom/android/server/lights/LightsService;->translateMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverOpened(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_9b

    const-string p0, "LightsService"

    const-string p1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    .line 461
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_9b
    monitor-enter p0

    .line 469
    :try_start_9c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_e8

    .line 470
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_fa

    .line 472
    :try_start_a7
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 477
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/4 v8, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->-$$Nest$msetSvcLedStateLocked(Lcom/android/server/lights/LightsService;IIIIIZ)V

    .line 479
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/lights/LightsService;->-$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V

    .line 481
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 483
    iget-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    monitor-exit v0

    goto :goto_f8

    :catchall_e5
    move-exception p1

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_a7 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw p1

    :cond_e8
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] not mIsIDUsingPatternLED"

    .line 488
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 489
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 491
    :goto_f8
    monitor-exit p0

    return-void

    :catchall_fa
    move-exception p1

    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_e7 .. :try_end_fc} :catchall_fa

    throw p1
.end method

.method public final setLightLocked(IIIII)V
    .registers 13

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 630
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIIII)V

    return-void
.end method

.method public final setLightLocked(IIIIII)V
    .registers 14

    .line 635
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    move v6, v1

    goto :goto_e

    :cond_9
    if-ne p6, v1, :cond_d

    .line 638
    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    :cond_d
    move v6, p6

    .line 641
    :goto_e
    iget-boolean p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz p6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, p6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p3, p6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p4, p6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p5, p6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne p6, v6, :cond_32

    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mExtendedBrightness:I

    if-ne p2, p6, :cond_32

    iget-object p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p6}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmIsLEDChanged(Lcom/android/server/lights/LightsService;)Z

    move-result p6

    if-eqz p6, :cond_9a

    .line 646
    :cond_32
    iget-object p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v0, 0x0

    invoke-static {p6, v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmIsLEDChanged(Lcom/android/server/lights/LightsService;Z)V

    const/4 p6, 0x1

    .line 652
    iput-boolean p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 653
    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 654
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 655
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mExtendedBrightness:I

    .line 656
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 657
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 658
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 659
    iput v6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 662
    iget-object p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p6, p6, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    if-eqz p6, :cond_91

    .line 663
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SvcLED] [setLightLocked] lightType:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", color:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mode: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", onMS: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offMS: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "LightsService"

    invoke-static {v0, p6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 668
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIIII)V

    :cond_9a
    return-void
.end method

.method public final setLightUnchecked(IIIIII)V
    .registers 16

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    .line 674
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 679
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfSehLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 681
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 682
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    int-to-byte p1, p3

    .line 683
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 684
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 685
    iput p5, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    int-to-byte p1, p6

    .line 686
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 689
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfSehLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/hardware/light/ISehLights;

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p0, p0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-interface {p1, p0, v0, p2}, Lvendor/samsung/hardware/light/ISehLights;->setLightState(ILandroid/hardware/light/HwLightState;I)V

    goto :goto_71

    .line 692
    :cond_5a
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, p0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_66} :catch_69
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_66} :catch_69
    .catchall {:try_start_2d .. :try_end_66} :catchall_67

    goto :goto_71

    :catchall_67
    move-exception p0

    goto :goto_75

    :catch_69
    move-exception p0

    :try_start_6a
    const-string p1, "LightsService"

    const-string p2, "Failed issuing setLightState"

    .line 695
    invoke-static {p1, p2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_67

    .line 697
    :goto_71
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 698
    throw p0
.end method

.method public setVrMode(Z)V
    .registers 3

    .line 559
    monitor-enter p0

    .line 560
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    .line 561
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 563
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 564
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$mgetVrDisplayMode(Lcom/android/server/lights/LightsService;)I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 565
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 566
    iget p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 574
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final stopFlashing()V
    .registers 8

    .line 578
    monitor-enter p0

    :try_start_1
    const-string v0, "LightsService"

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] stopFlashing : lightType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v3, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    .line 581
    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_63

    .line 585
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_6f

    .line 587
    :try_start_33
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 592
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$mclearSvcLedStateLocked(Lcom/android/server/lights/LightsService;I)V

    .line 594
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    monitor-exit v0

    goto :goto_6d

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_33 .. :try_end_62} :catchall_60

    :try_start_62
    throw v1

    .line 600
    :cond_63
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 602
    :goto_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception v0

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public turnOff()V
    .registers 8

    const-string v0, "LightsService"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] turnOff : lightType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v3, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    .line 524
    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    monitor-enter p0

    .line 529
    :try_start_28
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_92

    .line 530
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_9d

    .line 532
    :try_start_33
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 536
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$mclearSvcLedStateLocked(Lcom/android/server/lights/LightsService;I)V

    .line 537
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$sfgetmSvcLedState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_71

    .line 538
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V

    .line 540
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 542
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8d

    .line 544
    :cond_71
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    :goto_8d
    monitor-exit v0

    goto :goto_9b

    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_33 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v1

    :cond_92
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 554
    :goto_9b
    monitor-exit p0

    return-void

    :catchall_9d
    move-exception v0

    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw v0
.end method
