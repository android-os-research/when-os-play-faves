.class Lcom/android/server/display/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$Injector;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealInjector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3522
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 2

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 3548
    invoke-virtual {p0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .registers 1

    .line 3528
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 3

    .line 3568
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_10

    .line 3569
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3571
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .registers 1

    const-string/jumbo p0, "thermalservice"

    .line 3564
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3563
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public isDozeState(Landroid/view/Display;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 3558
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    return p0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 5

    .line 3541
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 4

    .line 3534
    sget-object p0, Lcom/android/server/display/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
