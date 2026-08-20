.class public Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;
.super Ljava/lang/Object;
.source "SemDisplayStateMonitor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayState(Landroid/content/Context;)I
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_e

    .line 57
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 59
    :cond_e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1f

    const-string p0, "SemDisplayStateMonitor"

    const-string v0, "default display is NULL"

    .line 61
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 64
    :cond_1f
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0
.end method

.method public registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_e

    .line 43
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 45
    :cond_e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public unregisterDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez p0, :cond_5

    return-void

    .line 52
    :cond_5
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method
