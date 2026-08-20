.class public abstract Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
    }
.end annotation


# static fields
.field public static final MCFDS_ACTION_START:Ljava/lang/String; = "com.samsung.android.mcfds.ACTION_START"

.field public static final MCFDS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds"

.field public static final MCFDS_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds.McfDeviceSyncService"

.field public static final SERVICE_STATE_AVAILABLE:I = 0x5

.field public static final SERVICE_STATE_CONNECTED:I = 0x3

.field public static final SERVICE_STATE_DISCONNECTED:I = 0x1

.field public static final SERVICE_STATE_NONE:I = 0x0

.field public static final SERVICE_STATE_REQUESTED:I = 0x2

.field public static final SERVICE_STATE_UNAVAILABLE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_LIB]_DeviceSyncManager"


# instance fields
.field public final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public mServiceState:I

.field public final mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 171
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    .line 269
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I
    .registers 1

    .line 24
    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->registerServiceStateListener()V

    return-void
.end method


# virtual methods
.method public abstract bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public connectService(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;)Z
    .registers 8
    .param p1    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 227
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectService : invalid request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 232
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.mcfds"

    const-string v5, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caller"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "connectService : success"

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 237
    iput v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    .line 238
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    return v2

    :cond_51
    const-string p0, "connectService : failed"

    .line 242
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public connectServiceAsUser(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;Landroid/os/UserHandle;)Z
    .registers 9
    .param p1    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    if-eq v0, v2, :cond_20

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "connectServiceAsUser : invalid request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 210
    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.mcfds"

    const-string v5, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caller"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p2, v0, v3}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectServiceAsUser : success "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 215
    iput p2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    .line 216
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    return v2

    :cond_64
    const-string p0, "connectService : failed"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disconnectService()V
    .registers 4

    .line 247
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_c

    const-string p0, "disconnectService : invalid request"

    .line 248
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string v0, "disconnectService"

    .line 252
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->unregisterServiceStateListener()V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 256
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    const-string v0, "disconnectService : IllegalArgumentException"

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 262
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    return-void
.end method

.method public getNearbyDeviceCount(I)I
    .registers 4

    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "getNearbyDeviceCount"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_INPUT"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 p1, 0x3e8

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public getNearbyDeviceList()Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "getNearbyDeviceList"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_1f

    .line 70
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->getNearbyDeviceList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    :cond_1f
    return-object v2
.end method

.method public getServiceState()I
    .registers 1

    .line 266
    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p0
.end method

.method public initMcfDeviceSyncMainController(ILjava/lang/String;)I
    .registers 5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMcfDeviceSyncMainController, bindReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasAutoSwitchDeviceMac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_BIND_REASON"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KEY_AUTO_SWITCH_DEVICE"

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 p1, 0x3ea

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public final notifyStateChanged(I)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    if-eqz p0, :cond_7

    .line 291
    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;->onStateChanged(I)V

    :cond_7
    return-void
.end method

.method public registerDeviceCallback(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    new-instance v0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v0, "registerDeviceStateListener"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "CALLBACK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public final registerServiceStateListener()V
    .registers 4

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v1, 0xa

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

.method public unregisterDeviceCallback()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v1, "unregisterDeviceCallback"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    return-void
.end method

.method public final unregisterServiceStateListener()V
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    return-void
.end method
