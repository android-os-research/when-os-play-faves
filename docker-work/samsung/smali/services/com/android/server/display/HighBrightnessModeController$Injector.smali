.class public Lcom/android/server/display/HighBrightnessModeController$Injector;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/server/display/DisplayManagerService$Clock;
    .registers 1

    .line 919
    new-instance p0, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .registers 1

    const-string/jumbo p0, "thermalservice"

    .line 924
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 923
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public reportHbmStateChange(III)V
    .registers 4

    const/16 p0, 0x1a0

    .line 928
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method
