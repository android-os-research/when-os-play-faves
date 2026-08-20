.class Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelIdleJob(Landroid/content/Context;)V
    .registers 2

    .line 1516
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->cancelJob(Landroid/content/Context;)V

    return-void
.end method

.method public currentTimeMillis()J
    .registers 3

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .registers 3

    .line 1488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public enableColorSampling(ZI)Z
    .registers 5

    .line 1568
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1569
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1570
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    move-result p0

    return p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .registers 1

    .line 1465
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 4

    .line 1480
    new-instance p0, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1508
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFrameRate(Landroid/content/Context;)F
    .registers 2

    .line 1555
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    .line 1556
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 1557
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public getNightDisplayColorTemperature(Landroid/content/Context;)I
    .registers 2

    .line 1524
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1525
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p0

    return p0
.end method

.method public getProfileIds(Landroid/os/UserManager;I)[I
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    .line 1501
    invoke-virtual {p1, p2, p0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, p0

    return-object p1
.end method

.method public getReduceBrightColorsOffsetFactor(Landroid/content/Context;)F
    .registers 2

    .line 1538
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1539
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    move-result p0

    return p0
.end method

.method public getReduceBrightColorsStrength(Landroid/content/Context;)I
    .registers 2

    .line 1533
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1534
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    move-result p0

    return p0
.end method

.method public getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2

    .line 1561
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1562
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    .line 1563
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    .line 1476
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .registers 3

    .line 1496
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p0

    return p0
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .registers 3

    .line 1492
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p0

    return p0
.end method

.method public isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z
    .registers 4

    const-string/jumbo p0, "screen_brightness_mode"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 1469
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_d

    move v0, p1

    :cond_d
    return v0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .registers 2

    .line 1520
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isNightDisplayActivated(Landroid/content/Context;)Z
    .registers 2

    .line 1529
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public isReduceBrightColorsActivated(Landroid/content/Context;)Z
    .registers 2

    .line 1543
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 1544
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result p0

    return p0
.end method

.method public registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    const-string/jumbo p0, "screen_brightness_mode"

    .line 1444
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 4

    .line 1576
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1577
    invoke-virtual {p0, p2, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1456
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sampleColor(I)Landroid/hardware/display/DisplayedContentSample;
    .registers 8

    .line 1548
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1549
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    int-to-long v2, p1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 1550
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public scheduleIdleJob(Landroid/content/Context;)V
    .registers 2

    .line 1512
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    return-void
.end method

.method public unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 3

    .line 1582
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1583
    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    .line 1451
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 1461
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
