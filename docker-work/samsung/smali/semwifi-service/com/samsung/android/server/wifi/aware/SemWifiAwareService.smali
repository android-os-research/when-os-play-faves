.class public final Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;
.super Lcom/android/server/SystemService;
.source "SemWifiAwareService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiAwareService"


# instance fields
.field final mImpl:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->mImpl:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_20

    .line 49
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    const-string v0, "SemWifiAwareService"

    if-nez p1, :cond_12

    const-string p0, "onBootPhase(PHASE_SYSTEM_SERVICES_READY): NULL injector!"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_12
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->mImpl:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->start(Landroid/os/HandlerThread;)V

    goto :goto_29

    :cond_20
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_29

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->mImpl:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;->startLate()V

    :cond_29
    :goto_29
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "SemWifiAwareService"

    const-string v1, "Registering sem_wifi_aware"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->mImpl:Lcom/samsung/android/server/wifi/aware/SemWifiAwareServiceImpl;

    const-string v1, "sem_wifi_aware"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
