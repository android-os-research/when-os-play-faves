.class Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceControlProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 2

    .line 1754
    invoke-static {p1}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public getBootDisplayModeSupport()Z
    .registers 3

    const-wide/16 v0, 0x20

    const-string p0, "getBootDisplayModeSupport"

    .line 1741
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1743
    :try_start_7
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 1745
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1746
    throw p0
.end method

.method public getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 2

    .line 1724
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2

    .line 1767
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 2

    .line 1707
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalDisplayIds()[J
    .registers 1

    .line 1711
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 3

    .line 1715
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 2

    .line 1719
    invoke-static {p1}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 3

    .line 1737
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 3

    .line 1758
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 3

    .line 1750
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 3

    .line 1729
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    return p0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3

    .line 1771
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result p0

    return p0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 6

    .line 1776
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result p0

    return p0
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 3

    .line 1733
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setGameContentType(Landroid/os/IBinder;Z)V
    .registers 3

    .line 1763
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method
