.class public Lcom/android/server/VpnManagerService$Dependencies;
.super Ljava/lang/Object;
.source "VpnManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .registers 1

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getINetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 1

    const-string/jumbo p0, "network_management"

    .line 152
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method public getNetd()Landroid/net/INetd;
    .registers 1

    .line 147
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .registers 1

    .line 143
    new-instance p0, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    return-object p0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .registers 2

    .line 138
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "VpnManagerService"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
