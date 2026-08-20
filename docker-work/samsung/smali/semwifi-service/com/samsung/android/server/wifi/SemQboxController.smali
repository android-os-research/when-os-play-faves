.class public Lcom/samsung/android/server/wifi/SemQboxController;
.super Ljava/lang/Object;
.source "SemQboxController.java"


# static fields
.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x1

.field private static final EVENT_QBOX_ADD_UID:I = 0x2

.field private static final EVENT_QBOX_REMOVE_ALL:I = 0x4

.field private static final EVENT_QBOX_REMOVE_UID:I = 0x3

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final QBOX_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.QBOX"

.field public static final TAG:Ljava/lang/String; = "SemQboxController"

.field private static final VER:Ljava/lang/String; = "1.0.0"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNumOfUids:I

.field private mPrimaryIfaceName:Ljava/lang/String;

.field private final mQboxUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$RpMrnLxwiXrkKIK85i0zJChqrwY(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->addUidInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->interfaceChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAllInternal(Lcom/samsung/android/server/wifi/SemQboxController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAllInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUidInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-class v0, Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (v"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") history:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->DUMP_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemQboxController$1;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.wifi.QBOX"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/SemQboxController;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    const-string p0, "SemQboxController Initialized: ver=1.0.0"

    .line 74
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private addUidInternal(I)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addUidInternal: Ignored since already has QBOX UID="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_9c

    .line 183
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 186
    :try_start_44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "startQbox"

    .line 187
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->startQbox(Ljava/lang/String;)V

    .line 190
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setQboxUid(IZ)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6f} :catch_70

    goto :goto_85

    :catch_70
    move-exception p1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUidInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 196
    :goto_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(v1.0.0) Total Qbox UIDs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_9c
    :goto_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addUidInternal: Ignored since iface="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNetd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private getNMS()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_18

    const-string v0, "network_management"

    .line 162
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "getNMS: IBinder returned is null"

    .line 164
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    goto :goto_18

    .line 166
    :cond_12
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 169
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private interfaceChanged(Ljava/lang/String;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAllInternal()V

    .line 156
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    :cond_d
    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2

    .line 66
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .line 58
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 122
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController$2;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;Landroid/os/Looper;)V

    return-object v0
.end method

.method private removeAllInternal()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "removeAllInternal: Ignored since no UID"

    .line 228
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_46

    :cond_1d
    const-string v0, "remove all UIDs and stopQbox"

    .line 237
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 242
    :try_start_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->stopQbox()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception p0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    :goto_45
    return-void

    .line 233
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllInternal: Ignored since iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mNetd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private removeUidInternal(I)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeUidInternal: Ignored since no QBOX UID="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_9a

    .line 210
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 213
    :try_start_44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setQboxUid(IZ)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 216
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "stopQbox since no uid remains"

    .line 217
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {p1}, Landroid/os/INetworkManagementService;->stopQbox()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6d} :catch_6e

    goto :goto_83

    :catch_6e
    move-exception p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUidInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 223
    :cond_83
    :goto_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(v1.0.0) Total Qbox UIDs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_9a
    :goto_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeUidInternal: Ignored since iface="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNetd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addUid(I)V
    .registers 4

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 249
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->DUMP_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total UIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 3

    const-string v0, "SemClientModeManager registered"

    .line 78
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logd(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemQboxController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method

.method public removeAll()V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeUid(I)V
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
