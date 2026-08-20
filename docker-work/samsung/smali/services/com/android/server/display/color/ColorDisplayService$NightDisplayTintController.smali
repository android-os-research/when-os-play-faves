.class public final Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
.super Lcom/android/server/display/color/TintController;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NightDisplayTintController"
.end annotation


# instance fields
.field public mColorTemp:Ljava/lang/Integer;

.field public final mColorTempCoefficients:[F

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mMatrix:[F

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2

    .line 1307
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 1309
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 1310
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void
.end method


# virtual methods
.method public final clampNightDisplayColorTemperature(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 1459
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1462
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1463
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result v0

    .line 1464
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result p0

    if-ge p1, v0, :cond_2c

    move p1, v0

    goto :goto_2f

    :cond_2c
    if-le p1, p0, :cond_2f

    move p1, p0

    :cond_2f
    :goto_2f
    return p1
.end method

.method public getColorTemperature()I
    .registers 2

    .line 1422
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result p0

    goto :goto_11

    .line 1423
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result p0

    :goto_11
    return p0
.end method

.method public getColorTemperatureSetting()I
    .registers 5

    .line 1448
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    return v1

    .line 1451
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1452
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    const-string/jumbo v3, "night_display_color_temperature"

    .line 1451
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result p0

    return p0
.end method

.method public getLevel()I
    .registers 1

    const/16 p0, 0x64

    return p0
.end method

.method public getMatrix()[F
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivationLock()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1353
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0

    .line 1356
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    goto :goto_14

    :cond_12
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_14
    return-object p0
.end method

.method public isActivatedSetting()Z
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    return v1

    .line 1443
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p0

    const-string/jumbo v2, "night_display_activated"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    move v1, v0

    :cond_27
    return v1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 1402
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 1403
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 1405
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onActivated(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const-string v0, "Turning on night display"

    goto :goto_7

    :cond_5
    const-string v0, "Turning off night display"

    :goto_7
    const-string v1, "ColorDisplayService"

    .line 1409
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayAutoMode(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1411
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayAutoMode(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onActivated(Z)V

    .line 1414
    :cond_1d
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, p1, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1415
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 1418
    :cond_30
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .registers 2

    .line 1435
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 1436
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .registers 3

    .line 1361
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .registers 7

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1370
    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    return-void

    .line 1374
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1376
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_36

    if-eqz v0, :cond_36

    .line 1378
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1380
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    const-string/jumbo v3, "night_display_last_activated_time"

    .line 1378
    invoke-static {v1, v3, p2, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1384
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result p2

    if-nez p2, :cond_3e

    if-eqz v0, :cond_6c

    .line 1385
    :cond_3e
    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1386
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p2, v0, :cond_65

    .line 1387
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1389
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v1

    const-string/jumbo v2, "night_display_activated"

    .line 1387
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1391
    :cond_65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onActivated(Z)V

    :cond_6c
    return-void
.end method

.method public setColorTemperature(I)Z
    .registers 5

    .line 1427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 1428
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v1

    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    return v0
.end method

.method public setMatrix(I)V
    .registers 9

    .line 1330
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_f

    const-string p0, "ColorDisplayService"

    const-string p1, "The display transformation matrix must be 4x4"

    .line 1331
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 1335
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 1338
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget v3, v2, v1

    mul-float/2addr v3, v0

    int-to-float p1, p1

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    add-float/2addr v3, v4

    const/4 v4, 0x3

    .line 1340
    aget v4, v2, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v6, v2, v5

    add-float/2addr v4, v6

    const/4 v6, 0x6

    .line 1342
    aget v6, v2, v6

    mul-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, v2, v6

    mul-float/2addr p1, v6

    add-float/2addr v0, p1

    const/16 p1, 0x8

    aget p1, v2, p1

    add-float/2addr v0, p1

    .line 1344
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    aput v3, p0, v1

    .line 1345
    aput v4, p0, v5

    const/16 p1, 0xa

    .line 1346
    aput v0, p0, p1

    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 5

    .line 1320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_a

    const p2, 0x10700fa

    goto :goto_d

    :cond_a
    const p2, 0x10700fb

    :goto_d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_12
    const/16 v0, 0x9

    if-ge p2, v0, :cond_26

    .line 1323
    array-length v0, p1

    if-ge p2, v0, :cond_26

    .line 1324
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_26
    return-void
.end method
