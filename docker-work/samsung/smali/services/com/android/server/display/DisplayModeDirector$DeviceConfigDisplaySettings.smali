.class public Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 3328
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPeakRefreshRate()Ljava/lang/Float;
    .registers 4

    .line 3423
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object p0

    const-string v0, "display_manager"

    const-string/jumbo v1, "peak_refresh_rate_default"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {p0, v0, v1, v2}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    cmpl-float v0, p0, v2

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 3430
    :cond_17
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getHighAmbientBrightnessThresholds()[I
    .registers 2

    const-string v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 3379
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[I
    .registers 2

    const-string v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 3370
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getIntArrayProperty(Ljava/lang/String;)[I
    .registers 5

    .line 3470
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 3474
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->parseIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_14
    return-object v2
.end method

.method public getLowAmbientBrightnessThresholds()[I
    .registers 2

    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    .line 3349
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[I
    .registers 2

    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 3340
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public getRefreshRateInHbmHdr()I
    .registers 4

    .line 3409
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    .line 3410
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3412
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object p0

    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_hbm_hdr"

    invoke-interface {p0, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .registers 4

    .line 3397
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    .line 3398
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3401
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object p0

    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_hbm_sunlight"

    invoke-interface {p0, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInHighZone()I
    .registers 4

    .line 3385
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3388
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object p0

    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_high_zone"

    invoke-interface {p0, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInLowZone()I
    .registers 4

    .line 3355
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3358
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object p0

    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_zone"

    invoke-interface {p0, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 3435
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object p1

    .line 3436
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3437
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3439
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object p1

    .line 3440
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v0

    .line 3441
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result v1

    .line 3443
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3445
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3446
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3447
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3449
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object p1

    .line 3450
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v0

    .line 3451
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result v1

    .line 3453
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3455
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3456
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3457
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3459
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result p1

    .line 3460
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3462
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3464
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result p1

    .line 3465
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3466
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final parseIntArray(Ljava/lang/String;)[I
    .registers 6

    const-string p0, ","

    .line 3481
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3482
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_34

    .line 3486
    :try_start_c
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_14} :catch_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_17
    move-exception p0

    .line 3489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect format for array: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayModeDirector"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :cond_34
    return-object v1
.end method

.method public startListening()V
    .registers 4

    .line 3332
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    .line 3333
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "display_manager"

    .line 3332
    invoke-interface {v0, v2, v1, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
