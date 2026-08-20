.class public Lcom/samsung/android/server/wifi/SemWifiService;
.super Lcom/android/server/SystemService;
.source "SemWifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiService"


# instance fields
.field final impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;

    const-string v3, "SemWifiService"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/android/internal/util/AsyncChannel;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->checkAndStartWifi()V

    goto :goto_13

    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleBootCompleted()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "SemWifiService"

    const-string v1, "Registering sem_wifi"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    const-string v1, "sem_wifi"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserStop(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserUnlock(I)V

    return-void
.end method
