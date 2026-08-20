.class public final Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;
.super Lcom/android/server/SystemService;
.source "SemWifiP2pService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiP2pService"


# instance fields
.field final mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_14

    .line 51
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SemWifiP2pService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleP2pServiceReady(Landroid/os/HandlerThread;)V

    goto :goto_1d

    :cond_14
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleBootCompleted()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "SemWifiP2pService"

    const-string v1, "Registering sem_wifi_p2p"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    const-string v1, "sem_wifi_p2p"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
