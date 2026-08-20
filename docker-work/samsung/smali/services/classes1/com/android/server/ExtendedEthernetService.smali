.class public Lcom/android/server/ExtendedEthernetService;
.super Landroid/os/Binder;
.source "ExtendedEthernetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ExtendedEthernetService$InterfaceObserver;
    }
.end annotation


# static fields
.field public static final INTERFACE_MODE_CLIENT:I = 0x1

.field public static final INTERFACE_MODE_SERVER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ExtendedEthernetService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEthernetCallback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

.field public mEthernetManager:Landroid/net/EthernetManager;

.field public mHandler:Landroid/os/Handler;

.field public mIfaceMatch:Ljava/lang/String;

.field public mInterfaceMode:I

.field public mIsNotiShown:Z

.field public mLastIntentState:Ljava/lang/String;

.field public mNMService:Landroid/os/INetworkManagementService;

.field public mStateListener:Landroid/net/EthernetManager$InterfaceStateListener;

.field public mStateObserver:Landroid/database/ContentObserver;

.field public mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

.field public mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ExtendedEthernetService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mIfaceMatch:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterfaceMode(Lcom/android/server/ExtendedEthernetService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ExtendedEthernetService;->mInterfaceMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNMService(Lcom/android/server/ExtendedEthernetService;)Landroid/os/INetworkManagementService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mNMService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTetheringManager(Lcom/android/server/ExtendedEthernetService;)Landroid/net/TetheringManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mTetheringManager:Landroid/net/TetheringManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInterfaceMode(Lcom/android/server/ExtendedEthernetService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/ExtendedEthernetService;->mInterfaceMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInterfaceAdded(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ExtendedEthernetService;->onInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInterfaceLinkStateChanged(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ExtendedEthernetService;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInterfaceRemoved(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ExtendedEthernetService;->onInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ExtendedEthernetService;->updateEthCableConnectNotification(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mHandler:Landroid/os/Handler;

    const-string v0, "eth\\d"

    .line 68
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mIfaceMatch:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/android/server/ExtendedEthernetService;->mInterfaceMode:I

    const-string v0, "Disconnected"

    .line 72
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mLastIntentState:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/server/ExtendedEthernetService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ExtendedEthernetService$1;-><init>(Lcom/android/server/ExtendedEthernetService;)V

    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetCallback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    .line 103
    new-instance v0, Lcom/android/server/ExtendedEthernetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ExtendedEthernetService$2;-><init>(Lcom/android/server/ExtendedEthernetService;)V

    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mStateListener:Landroid/net/EthernetManager$InterfaceStateListener;

    .line 117
    new-instance v0, Lcom/android/server/ExtendedEthernetService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/ExtendedEthernetService$3;-><init>(Lcom/android/server/ExtendedEthernetService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mStateObserver:Landroid/database/ContentObserver;

    const-string/jumbo v0, "missing context"

    .line 139
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "network_management"

    .line 141
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mNMService:Landroid/os/INetworkManagementService;

    .line 144
    :try_start_47
    new-instance v0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;-><init>(Lcom/android/server/ExtendedEthernetService;Lcom/android/server/ExtendedEthernetService$InterfaceObserver-IA;)V

    invoke-interface {p1, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_68

    :catch_51
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not register InterfaceObserver "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtendedEthernetService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method


# virtual methods
.method public final onInterfaceAdded(Ljava/lang/String;)V
    .registers 6

    .line 227
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_device_conn"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 228
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ETH_DEVICE_CONNECTED is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ETHERNET_TETHERING_MODE"

    .line 231
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    if-nez p1, :cond_50

    const-string p1, "call requestTetheredInterface()"

    .line 232
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetManager:Landroid/net/EthernetManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetCallback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    :cond_50
    return-void
.end method

.method public final onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/server/ExtendedEthernetService;->sendIntent(Z)V

    return-void
.end method

.method public final onInterfaceRemoved(Ljava/lang/String;)V
    .registers 6

    .line 238
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_device_conn"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ETH_DEVICE_CONNECTED is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtendedEthernetService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    return-void
.end method

.method public final sendIntent(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-string p1, "Connected"

    goto :goto_7

    :cond_5
    const-string p1, "Disconnected"

    .line 250
    :goto_7
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mLastIntentState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 251
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mLastIntentState:Ljava/lang/String;

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mLastIntentState:Ljava/lang/String;

    const-string v2, "eth_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_48
    return-void
.end method

.method public systemReady()V
    .registers 7

    const-string v0, "eth_disabled"

    const-string v1, "ExtendedEthernetService"

    const-string/jumbo v2, "systemReady()"

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "tethering"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringManager;

    iput-object v2, p0, Lcom/android/server/ExtendedEthernetService;->mTetheringManager:Landroid/net/TetheringManager;

    .line 154
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    const-string v3, "ethernet"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/EthernetManager;

    iput-object v2, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetManager:Landroid/net/EthernetManager;

    .line 156
    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/server/ExtendedEthernetService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/ExtendedEthernetService;->mStateListener:Landroid/net/EthernetManager$InterfaceStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ETHERNET_TETHERING_MODE"

    .line 159
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "ETHERNET_TETHERING_MODE is on"

    .line 160
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetManager:Landroid/net/EthernetManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/ExtendedEthernetService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetCallback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    invoke-virtual {v3, v4, v5}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ExtendedEthernetService;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    :cond_5a
    const/4 v3, 0x0

    .line 166
    :try_start_5b
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63

    goto :goto_64

    :cond_63
    move v5, v3

    :goto_64
    if-eqz v5, :cond_74

    .line 170
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetService;->mEthernetManager:Landroid/net/EthernetManager;

    invoke-virtual {v4, v3}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V
    :try_end_6b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5b .. :try_end_6b} :catch_6c

    goto :goto_74

    :catch_6c
    const-string v4, "Not found ETH_DISABLED"

    .line 173
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final updateEthCableConnectNotification(Z)V
    .registers 12

    .line 183
    iget-boolean v0, p0, Lcom/android/server/ExtendedEthernetService;->mIsNotiShown:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 187
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEthCableConnectNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_2a

    return-void

    .line 197
    :cond_2a
    iput-boolean p1, p0, Lcom/android/server/ExtendedEthernetService;->mIsNotiShown:Z

    const/4 v1, 0x0

    const v2, 0x104049d

    if-eqz p1, :cond_a9

    .line 199
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104049c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$EthernetSettingsActivity"

    .line 204
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.settings.ETHERNET_SETTINGS"

    .line 205
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 206
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x2000000

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 209
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080a7a

    .line 210
    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v6, 0x0

    .line 211
    invoke-virtual {p0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v6, 0x1

    .line 212
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v7, 0x0

    .line 214
    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 220
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_ae

    .line 222
    :cond_a9
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_ae
    return-void
.end method
