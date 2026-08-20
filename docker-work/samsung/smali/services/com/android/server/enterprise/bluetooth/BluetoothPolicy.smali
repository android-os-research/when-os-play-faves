.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.super Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field public isCacheUpdated:Z

.field public mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

.field public mCacheIsBluetoothLogEnabled:Z

.field public mContext:Landroid/content/Context;

.field public mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRestart:Z

.field public mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogQueue(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestart(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRestart(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableDesktopConnectivity(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 117
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 147
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 128
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 129
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 131
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 139
    new-instance p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v1, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 141
    new-instance p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v1, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 142
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    .line 143
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->initProfileMap()V

    return-void
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    const-string v0, "BluetoothPolicyService"

    const-string v1, "activateBluetoothDeviceRestriction"

    .line 1479
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1481
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1486
    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eq p2, v4, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 1487
    :goto_1e
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "devicePolicyEnabled"

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v5, :cond_3d

    if-eqz v4, :cond_3d

    .line 1490
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception p0

    .line 1494
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_3d
    :goto_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public activateBluetoothUUIDRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    const-string v0, "BluetoothPolicyService"

    const-string v1, "activateBluetoothUUIDRestriction"

    .line 1297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1301
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1304
    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eq p2, v4, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 1305
    :goto_1e
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profilePolicyEnabled"

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v5, :cond_3e

    if-eqz v4, :cond_3e

    .line 1309
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1310
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p0

    .line 1313
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_3e
    :goto_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public addBluetoothDevicesToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "addDevicesToBlackList"

    .line 1321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1323
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_32

    .line 1327
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 1331
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1332
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    .line 1333
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1334
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1335
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "addDevicesToWhiteList"

    .line 1393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1395
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_32

    .line 1399
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 1403
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1404
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    .line 1405
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1407
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public addBluetoothUUIDsToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "addProfilesToBlackList"

    .line 1155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1157
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_32

    .line 1161
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 1164
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1165
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    .line 1166
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1168
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public addBluetoothUUIDsToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "addProfilesToWhiteList"

    .line 1226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1228
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_32

    .line 1232
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 1236
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1237
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    .line 1238
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1240
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 1752
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1755
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1756
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez p2, :cond_17

    .line 1759
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledforAdmin(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothRestore(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1762
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothRestore(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1763
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1766
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    .line 1769
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string v4, "allowBLE"

    invoke-virtual {p0, p1, v2, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p2, :cond_4c

    .line 1773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    if-eqz v0, :cond_3e

    .line 1776
    :try_start_3b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    :cond_3e
    const-string v0, "ble_scan_always_enabled"

    .line 1778
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_47

    .line 1780
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4c

    :catchall_47
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    throw p0

    :cond_4c
    :goto_4c
    move v3, p0

    goto :goto_55

    :cond_4e
    const-string p0, "BluetoothPolicyService"

    const-string p1, "allowBLE was failed"

    .line 1786
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return v3
.end method

.method public allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 16

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothPolicyService"

    if-nez v0, :cond_1b

    .line 285
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getAdminUidForBLE()I

    move-result v0

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v3, :cond_1b

    const-string p0, "failed to allowBluetooth due to BLE policy"

    .line 286
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 292
    :cond_1b
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-nez p2, :cond_40

    .line 297
    :try_start_25
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 298
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_35

    .line 299
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_40

    .line 301
    :cond_35
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_40

    .line 303
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V

    .line 307
    :cond_40
    :goto_40
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 311
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "BluetoothPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has changed allow bluetooth to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 314
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 310
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_82} :catch_89
    .catchall {:try_start_25 .. :try_end_82} :catchall_87

    .line 323
    :cond_82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v5

    goto :goto_94

    :catchall_87
    move-exception p0

    goto :goto_95

    :catch_89
    move-exception p0

    .line 321
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_87

    .line 323
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_94
    return v1

    :goto_95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw p0
.end method

.method public final allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 330
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p2, :cond_25

    .line 335
    :try_start_a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1a

    .line 337
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_25

    .line 339
    :cond_1a
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_25

    .line 341
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V

    .line 345
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_75

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 349
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "BluetoothPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has changed allow bluetooth to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 352
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 348
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    .line 354
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_6a
    .catchall {:try_start_a .. :try_end_67} :catchall_68

    goto :goto_75

    :catchall_68
    move-exception p0

    goto :goto_79

    :catch_6a
    move-exception p0

    const/4 v3, 0x0

    :try_start_6c
    const-string p1, "BluetoothPolicyService"

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_68

    .line 361
    :cond_75
    :goto_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    throw p0
.end method

.method public allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1724
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string v1, "allowCallerID"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 1728
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 10

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowOutgoingCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 521
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, p1, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 523
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    .line 524
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_48

    const/4 p2, 0x1

    .line 526
    iput-boolean p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 527
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    .line 530
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_48
    :goto_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public applyBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1645
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1646
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1647
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1648
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1650
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "*"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1652
    :cond_2a
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_c

    :catch_34
    move-exception p0

    .line 1656
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method public final applyDevicePolicy()V
    .registers 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyBlackList(Ljava/util/List;)V

    return-void
.end method

.method public final auditLogMessage(IIZI)V
    .registers 12

    const/4 p0, 0x1

    if-eq p2, p0, :cond_43

    const/4 p0, 0x2

    if-eq p2, p0, :cond_40

    const/4 p0, 0x4

    if-eq p2, p0, :cond_3d

    const/16 p0, 0x8

    if-eq p2, p0, :cond_3a

    const/16 p0, 0x10

    if-eq p2, p0, :cond_37

    const/16 p0, 0x20

    if-eq p2, p0, :cond_34

    const/16 p0, 0x40

    if-eq p2, p0, :cond_31

    const/16 p0, 0x80

    if-eq p2, p0, :cond_2e

    const/16 p0, 0x100

    if-eq p2, p0, :cond_2b

    const/16 p0, 0x200

    if-eq p2, p0, :cond_28

    const-string p0, ""

    goto :goto_45

    :cond_28
    const-string p0, "BPP"

    goto :goto_45

    :cond_2b
    const-string p0, "SAP"

    goto :goto_45

    :cond_2e
    const-string p0, "SPP"

    goto :goto_45

    :cond_31
    const-string p0, "FTP"

    goto :goto_45

    :cond_34
    const-string p0, "DUN"

    goto :goto_45

    :cond_37
    const-string p0, "AVRCP"

    goto :goto_45

    :cond_3a
    const-string p0, "A2DP"

    goto :goto_45

    :cond_3d
    const-string p0, "PBAP"

    goto :goto_45

    :cond_40
    const-string p0, "HFP"

    goto :goto_45

    :cond_43
    const-string p0, "HSP"

    :goto_45
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 724
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_63

    const-string p1, "allowed "

    goto :goto_65

    :cond_63
    const-string p1, "blocked "

    .line 726
    :goto_65
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_72
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " bluetooth profile."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "BluetoothPolicy"

    move v6, p4

    .line 723
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    return p0
.end method

.method public clearBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "BluetoothPolicyService"

    const-string v1, "clearDevicesFromBlackList"

    .line 1359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1361
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1364
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromBlackList(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 1365
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1367
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public clearBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "BluetoothPolicyService"

    const-string v1, "clearDevicesFromWhiteList"

    .line 1431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1433
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1436
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromWhiteList(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 1437
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1439
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public clearBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "BluetoothPolicyService"

    const-string v1, "clearProfilesFromBlackList"

    .line 1192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1194
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1197
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromBlackList(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 1198
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1200
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public clearBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "BluetoothPolicyService"

    const-string v1, "clearProfilesFromWhiteList"

    .line 1264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1266
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1269
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromWhiteList(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 1270
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1272
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final delayedBTOff()V
    .registers 2

    .line 367
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final disableDesktopConnectivity()V
    .registers 7

    .line 945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 946
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 949
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 951
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 953
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 954
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 955
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 957
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_12

    .line 960
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z

    goto :goto_12

    .line 964
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    .line 1870
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 1872
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1875
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v0, "allowCallerID"

    const-string v1, "allowDataTransfer"

    const-string v2, "allowOutgoingCalls"

    const-string v3, "desktopConnectivityEnabled"

    const-string v4, "devicePolicyEnabled"

    const-string v5, "discoverableModeEnabled"

    const-string v6, "bluetoothEnabled"

    const-string/jumbo v7, "limitedDiscoverableEnabled"

    const-string v8, "bluetoothLogEnabled"

    const-string/jumbo v9, "pairingEnabled"

    const-string/jumbo v10, "profileSettings"

    const-string/jumbo v11, "profilePolicyEnabled"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "BLUETOOTH"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final enforceBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 402
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 418
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 418
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 412
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAdminUidForBLE()I
    .registers 4

    .line 1809
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 1810
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLUETOOTH"

    const-string v2, "allowBLE"

    .line 1809
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdminUidForBLE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAllBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getAllDevicesBlackLists"

    .line 1372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1375
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 1376
    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object p1

    .line 1375
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getAllBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getAllDevicesWhiteLists"

    .line 1460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1463
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object p1

    .line 1463
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getAllBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getAllProfilesBlackLists"

    .line 1205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1208
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 1209
    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object p1

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getAllBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getAllProfilesWhiteLists"

    .line 1277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1280
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 1281
    invoke-virtual {p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object p1

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllowBluetoothDataTransfer - showMsg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "BLUETOOTH"

    const-string v0, "allowDataTransfer"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 450
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3a

    :cond_39
    const/4 p1, 0x1

    :goto_3a
    if-eqz p2, :cond_44

    if-nez p1, :cond_44

    const p0, 0x1040265

    .line 459
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_44
    return p1
.end method

.method public getBluetoothLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getBluetoothLog()"

    .line 1082
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo p1, "time"

    const-string/jumbo v1, "log"

    .line 1086
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 1087
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "BluetoothLogTable"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "getBluetoothLog - cvList is null"

    .line 1091
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1094
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBluetoothLog() - cvList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1098
    :cond_42
    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1099
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1100
    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    const-string v5, ":"

    .line 1103
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 1106
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1108
    :cond_64
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBluetoothLog() - report: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1112
    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBluetoothLog() - reportList: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBluetoothLogEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_24

    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1033
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_25

    :cond_24
    const/4 p1, -0x1

    :goto_25
    const-string p2, "bluetoothLogEnabled"

    .line 1036
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "true"

    const-string v3, "BLUETOOTH"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez p1, :cond_92

    const/4 p2, 0x0

    .line 1043
    :try_start_49
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_68

    .line 1047
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-ne p0, v5, :cond_68

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_68

    .line 1048
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_65} :catch_70
    .catchall {:try_start_49 .. :try_end_65} :catchall_6e

    if-eqz p0, :cond_68

    move v4, v5

    :cond_68
    if-eqz p2, :cond_dd

    .line 1057
    :goto_6a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_dd

    :catchall_6e
    move-exception p0

    goto :goto_8c

    :catch_70
    move-exception p0

    .line 1054
    :try_start_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurred accessing Enterprise db "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_6e

    if-eqz p2, :cond_dd

    goto :goto_6a

    :goto_8c
    if-eqz p2, :cond_91

    .line 1057
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1058
    :cond_91
    throw p0

    .line 1060
    :cond_92
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_dd

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1067
    :cond_b2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 1068
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    move v4, v5

    .line 1077
    :cond_dd
    :goto_dd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBluetoothLogEnabled - ret: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 179
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getEffectiveBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getEffectiveBluetoothDevicesBlackLists"

    .line 1383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1386
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object p0

    .line 1387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getEffectiveBluetoothDevicesWhiteLists"

    .line 1470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1473
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object p0

    .line 1474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getEffectiveBluetoothUUIDsBlackLists"

    .line 1216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1219
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object p0

    .line 1220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string v1, "getEffectiveBluetoothUUIDsWhiteLists"

    .line 1287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1290
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object p0

    .line 1291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getProfileFromUUID(Ljava/lang/String;)I
    .registers 7

    .line 1528
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1529
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1531
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 1532
    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1533
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1534
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_39
    const/4 p0, -0x1

    return p0
.end method

.method public final initProfileMap()V
    .registers 13

    .line 1661
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v8, 0x80

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v10, 0x200

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v11, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1678
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1795
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "BLUETOOTH"

    const-string v0, "allowBLE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1798
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    :goto_22
    return p1
.end method

.method public isBluetoothDeviceAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    .line 1557
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p1, :cond_1a

    .line 1563
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 1567
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p2, :cond_19

    if-nez p0, :cond_19

    const p1, 0x1040267

    .line 1570
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_19
    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothDeviceRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isBluetoothDeviceRestrictionActive"

    .line 1511
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1514
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p0

    .line 1515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isBluetoothEnabled "

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothRestrictedByConstrainedState()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    goto :goto_35

    .line 197
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "bluetoothEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 200
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    move p0, v0

    goto :goto_35

    :cond_34
    const/4 p0, 0x1

    :goto_35
    if-eqz p1, :cond_3f

    if-nez p0, :cond_3f

    const p1, 0x1040270

    .line 210
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3f
    return p0
.end method

.method public isBluetoothEnabledWithMsg(Z)Z
    .registers 2

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothEnabledforAdmin(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 1835
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string v1, "bluetoothEnabled"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 1838
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1021
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 1022
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 1023
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 1025
    :cond_d
    iget-boolean p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    return p0
.end method

.method public final isBluetoothRestore(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 1825
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string v1, "allowBluetoothRestore"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 1828
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isBluetoothRestrictedByConstrainedState()Z
    .registers 2

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isBluetoothUUIDAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    .line 1520
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 2

    .line 1524
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .registers 4

    .line 1541
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .line 1543
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 1544
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    return v1

    :cond_f
    const/4 p1, -0x1

    if-eq v0, p1, :cond_1d

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result p0

    if-nez p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public isBluetoothUUIDRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isBluetoothUUIDRestrictionActive"

    .line 1502
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1505
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p0

    .line 1506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const/4 p1, 0x1

    .line 1736
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "allowCallerID"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1739
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    if-nez v0, :cond_f

    move p1, v0

    goto :goto_2d

    :catch_23
    move-exception p0

    .line 1746
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return p1
.end method

.method public isDesktopConnectivityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x0

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isDesktopConnectivityEnabled(Z)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isDesktopConnectivityEnabled "

    .line 976
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "desktopConnectivityEnabled"

    .line 979
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 982
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    if-eqz p1, :cond_36

    if-nez v0, :cond_36

    const p0, 0x1040266

    .line 991
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_36
    return v0
.end method

.method public isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string p1, "BluetoothPolicyService"

    const-string/jumbo v0, "isDiscoverableEnabled "

    .line 897
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "discoverableModeEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 902
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x1

    .line 909
    :goto_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDiscoverableEnabled ret:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string p1, "BluetoothPolicyService"

    const-string/jumbo v0, "isLimitedDiscoverableEnabled "

    .line 606
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string/jumbo v1, "limitedDiscoverableEnabled"

    .line 609
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 612
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x1

    .line 619
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x0

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isOutgoingCallsAllowed(Z)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isPairingEnabled "

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "allowOutgoingCalls"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 552
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    if-eqz p1, :cond_36

    if-nez v0, :cond_36

    const p0, 0x104026c

    .line 561
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_36
    return v0
.end method

.method public isPairingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x0

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isPairingEnabled(Z)Z
    .registers 4

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isPairingEnabled "

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string/jumbo v1, "pairingEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 494
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    if-eqz p1, :cond_37

    if-nez v0, :cond_37

    const p0, 0x104026d

    .line 503
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_37
    return v0
.end method

.method public final isProfileEnabled(II)Z
    .registers 6

    const-string p1, "BluetoothPolicyService"

    const/4 v0, 0x1

    if-lez p2, :cond_38

    .line 755
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BLUETOOTH"

    const-string/jumbo v2, "profileSettings"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 758
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 759
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 760
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    if-eq p2, v1, :cond_1a

    const/4 p0, 0x0

    move v0, p0

    goto :goto_4c

    :catch_36
    move-exception p0

    goto :goto_3e

    .line 752
    :cond_38
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
    :try_end_3e
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_3e} :catch_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_36

    .line 770
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catch_46
    const-string/jumbo p0, "isProfileEnabled() failed: INVALID PARAMETER INPUT"

    .line 768
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return v0
.end method

.method public isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 3

    .line 742
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result p0

    return p0
.end method

.method public isProfileEnabledInternal(IZ)Z
    .registers 9

    const-string v0, "BluetoothPolicyService"

    const/4 v1, 0x1

    if-lez p1, :cond_3c

    .line 828
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    if-eqz p2, :cond_15

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    :cond_15
    return v3

    .line 835
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v4, v3

    .line 836
    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 837
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    move v1, v3

    goto :goto_50

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :catch_3a
    move-exception v2

    goto :goto_42

    .line 825
    :cond_3c
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2
    :try_end_42
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_42} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_3a

    .line 845
    :goto_42
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catch_4a
    const-string/jumbo v2, "isProfileEnabledInternal() failed: INVALID PARAMETER INPUT"

    .line 843
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    if-eqz p2, :cond_57

    if-nez v1, :cond_57

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    :cond_57
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved()V
    .registers 2

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 219
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAdminRemoved - uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1584
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1585
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1588
    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1590
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "onAdminRemoved - Clean log"

    .line 1591
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1595
    :cond_42
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_4b

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->updateSystemUIMonitor(I)V

    :cond_4b
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "removeDevicesFromBlackList"

    .line 1340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1342
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_33

    .line 1346
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_33

    .line 1350
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1351
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2f

    .line 1352
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1353
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1354
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "removeDevicesFromWhiteList"

    .line 1412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1414
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_33

    .line 1418
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_33

    .line 1422
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1423
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2f

    .line 1424
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1426
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public removeBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "removeProfilesFromBlackList"

    .line 1173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1175
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_33

    .line 1179
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_33

    .line 1183
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2f

    .line 1185
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1187
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "removeProfilesFromWhiteList"

    .line 1245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1247
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p2, :cond_33

    .line 1251
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_33

    .line 1255
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1256
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2f

    .line 1257
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1259
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public final restartBluetooth()V
    .registers 3

    .line 1634
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1635
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 1637
    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 1638
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_12
    return-void
.end method

.method public setAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowBluetoothDataTransfer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string v1, "allowDataTransfer"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    const-string v0, "BluetoothPolicyService"

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 234
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 237
    :try_start_e
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "BLUETOOTH"

    const-string v7, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetooth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz p2, :cond_3f

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 243
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_56

    .line 246
    :cond_3f
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_4b

    .line 247
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_56

    .line 249
    :cond_4b
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_56

    .line 251
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V

    :cond_56
    :goto_56
    if-eqz v4, :cond_91

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 256
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "BluetoothPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has changed bluetooth enabled to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 259
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 255
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_85} :catch_88
    .catchall {:try_start_e .. :try_end_85} :catchall_86

    goto :goto_91

    :catchall_86
    move-exception p0

    goto :goto_9e

    :catch_88
    move-exception p2

    const/4 v4, 0x0

    .line 263
    :try_start_8a
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_86

    .line 265
    :cond_91
    :goto_91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_9d

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    :cond_9d
    return v4

    .line 265
    :goto_9e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    throw p0
.end method

.method public final setBluetoothAllowedSystemUI(IZ)V
    .registers 5

    .line 1859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1861
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 1862
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 1866
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "BluetoothPolicyService"

    const-string/jumbo p2, "setBluetoothAllowedSystemUI() failed. "

    .line 1864
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 1866
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1867
    throw p0
.end method

.method public setBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothLogEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1003
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bluetoothLogEnabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez p2, :cond_53

    const/4 p2, 0x1

    .line 1008
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-nez p1, :cond_53

    const-string/jumbo p1, "setBluetoothLogEnabled - Clean log"

    .line 1009
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "BluetoothLogTable"

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1011
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1013
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBluetoothLogEnabled - return = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6d

    const/4 p1, 0x0

    .line 1015
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    :cond_6d
    return v0
.end method

.method public final setBluetoothRestore(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 1817
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string v1, "allowBluetoothRestore"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setDesktopConnectivityState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesktopConnectivityState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 929
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "desktopConnectivityEnabled"

    invoke-virtual {v0, p1, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 931
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez p2, :cond_48

    if-eqz p1, :cond_48

    if-eqz v0, :cond_48

    .line 932
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 933
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception p0

    .line 936
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 939
    :cond_48
    :goto_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1
.end method

.method public setDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    const-string v0, "BluetoothPolicyService"

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 870
    :try_start_a
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "discoverableModeEnabled"

    invoke-virtual {p0, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDiscoverableState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_66

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 875
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "BluetoothPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4f

    const-string p2, "enabled"

    goto :goto_51

    :cond_4f
    const-string p2, "disabled"

    .line 877
    :goto_51
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Bluetooth discoverable state."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 879
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 874
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_66} :catch_6c
    .catchall {:try_start_a .. :try_end_66} :catchall_6a

    .line 885
    :cond_66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_79

    :catchall_6a
    move-exception p0

    goto :goto_7a

    :catch_6c
    move-exception p0

    const/4 p1, 0x0

    .line 883
    :try_start_6e
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6a

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, p1

    :goto_79
    return p0

    :goto_7a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw p0
.end method

.method public setLimitedDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    const-string v0, "BluetoothPolicyService"

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 578
    :try_start_a
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string/jumbo v5, "limitedDiscoverableEnabled"

    invoke-virtual {p0, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLimitedDiscoverableState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_67

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 583
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "BluetoothPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_50

    const-string p2, "enabled"

    goto :goto_52

    :cond_50
    const-string p2, "disabled"

    .line 585
    :goto_52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Bluetooth limited discoverable state."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 587
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 582
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_6d
    .catchall {:try_start_a .. :try_end_67} :catchall_6b

    .line 593
    :cond_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7a

    :catchall_6b
    move-exception p0

    goto :goto_7b

    :catch_6d
    move-exception p0

    const/4 p1, 0x0

    .line 591
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6b

    .line 593
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, p1

    :goto_7a
    return p0

    :goto_7b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    throw p0
.end method

.method public setPairingState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPairingState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 474
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "BLUETOOTH"

    const-string/jumbo v1, "pairingEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setProfileState(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .registers 13

    const-string/jumbo v0, "profileSettings"

    const-string v1, "BLUETOOTH"

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 636
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 638
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    if-lez p3, :cond_59

    .line 650
    :try_start_35
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v2, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7
    :try_end_3b
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_35 .. :try_end_3b} :catch_40
    .catch Ljava/security/InvalidParameterException; {:try_start_35 .. :try_end_3b} :catch_67
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3e
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3c

    goto :goto_43

    :catchall_3c
    move-exception p0

    goto :goto_71

    :catch_3e
    move-exception p0

    goto :goto_5f

    :catch_40
    const v7, 0xffff

    :goto_43
    const/4 v8, 0x1

    if-ne v8, p2, :cond_48

    or-int/2addr v7, p3

    goto :goto_4a

    :cond_48
    not-int v8, p3

    and-int/2addr v7, v8

    .line 657
    :goto_4a
    :try_start_4a
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v2, v1, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 661
    invoke-virtual {p0, v2, p3, p2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->auditLogMessage(IIZI)V

    .line 664
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    goto :goto_6d

    .line 644
    :cond_59
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
    :try_end_5f
    .catch Ljava/security/InvalidParameterException; {:try_start_4a .. :try_end_5f} :catch_67
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5f} :catch_3e
    .catchall {:try_start_4a .. :try_end_5f} :catchall_3c

    .line 668
    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catch_67
    const-string/jumbo p0, "setProfileState() failed: INVALID PARAMETER INPUT"

    .line 666
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_3c

    .line 670
    :goto_6d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_71
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    throw p0
.end method

.method public final showProfileBlockedToast(I)V
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_46

    const/4 p0, 0x4

    if-eq p1, p0, :cond_42

    const/16 p0, 0x8

    if-eq p1, p0, :cond_3e

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3a

    const/16 p0, 0x20

    if-eq p1, p0, :cond_36

    const/16 p0, 0x40

    if-eq p1, p0, :cond_32

    const/16 p0, 0x80

    if-eq p1, p0, :cond_2e

    const/16 p0, 0x100

    if-eq p1, p0, :cond_2a

    const/16 p0, 0x200

    if-eq p1, p0, :cond_26

    return-void

    :cond_26
    const p0, 0x1040262

    goto :goto_4d

    :cond_2a
    const p0, 0x1040271

    goto :goto_4d

    :cond_2e
    const p0, 0x1040274

    goto :goto_4d

    :cond_32
    const p0, 0x1040269

    goto :goto_4d

    :cond_36
    const p0, 0x1040268

    goto :goto_4d

    :cond_3a
    const p0, 0x1040261

    goto :goto_4d

    :cond_3e
    const p0, 0x104025f

    goto :goto_4d

    :cond_42
    const p0, 0x104026e

    goto :goto_4d

    :cond_46
    const p0, 0x104026a

    goto :goto_4d

    :cond_4a
    const p0, 0x104026b

    .line 815
    :goto_4d
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 1601
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1602
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->reload()Z

    .line 1603
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 1604
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ControlInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .line 1444
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_41

    .line 1445
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ControlInfo;

    .line 1447
    iget-object v1, v0, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_11

    .line 1449
    :cond_28
    new-instance v1, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;-><init>()V

    .line 1450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 1451
    iget-object v3, v0, Lcom/samsung/android/knox/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 1452
    iget-object v0, v0, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1453
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_41
    return-object p0
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1856
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothRestrictedByConstrainedState()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    return-void
.end method
