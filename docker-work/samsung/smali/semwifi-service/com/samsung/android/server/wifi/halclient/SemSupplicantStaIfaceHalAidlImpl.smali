.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHalAidlImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;
    }
.end annotation


# static fields
.field private static final ANDROID_VERSION_ROS:I = 0xb

.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaIfaceHalAidlImpl"

.field private static final UNINITIALIZED:I = -0x1

.field static vendorReleaseVersion:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentNetworkRemoteHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentSupplicantNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

.field private final mEventHandler:Landroid/os/Handler;

.field private mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

.field private final mISehSupplicantStaIfaceCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mISehSupplicantStaIfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

.field private final mISupplicantStaIfaceCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mISupplicantStaIfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceCallback:Landroid/os/IServiceCallback;

.field private mServiceDeclared:Z

.field private final mSupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;

.field private final mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public static synthetic $r8$lambda$GXMzfwV5gqnXVpAD4NmkiACF3GU(Ljava/util/List;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->lambda$probeStaIfaceNames$0(Ljava/util/List;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHAL_INSTANCE_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    const/4 v0, -0x1

    .line 60
    sput v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->vendorReleaseVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V
    .registers 7

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mServiceDeclared:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/Map;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/Map;

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 116
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    .line 117
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;

    .line 118
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 119
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mSupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;

    return-void
.end method

.method private checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;
    .registers 6

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getSehStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ISehSupplicantStaIface is null for iface="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 229
    monitor-exit v0

    return-object p0

    .line 231
    :cond_2a
    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    .line 232
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISehSupplicantExt is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 200
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 202
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ISupplicantStaIface is null for iface="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 216
    monitor-exit v0

    return-object p0

    .line 218
    :cond_2a
    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    .line 219
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ISupplicant is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 187
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 189
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private clearState()V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 568
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    .line 569
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    .line 570
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 571
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 572
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 573
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 574
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 833
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 930
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getExtendedInformation"

    .line 932
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 934
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    return-object v1

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    new-array v3, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    .line 937
    invoke-interface {p1, p2, v3, v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->getExtendedInformation(Ljava/lang/String;[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_17} :catch_19
    .catchall {:try_start_f .. :try_end_17} :catchall_28

    :try_start_17
    monitor-exit v0

    return-object p0

    :catch_19
    move-exception p1

    const-string p2, "getExtendedInformation"

    .line 941
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_26

    :catch_20
    move-exception p1

    const-string p2, "getExtendedInformation"

    .line 939
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 943
    :goto_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception p0

    .line 944
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .registers 6

    .line 426
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getIface"

    .line 428
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 429
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    return-object v3

    .line 432
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_2a

    :try_start_14
    monitor-exit v0

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Encountered exception at getIface: "

    .line 438
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_1f
    move-exception p1

    .line 436
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_28

    :catch_24
    move-exception p1

    .line 434
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 440
    :goto_28
    monitor-exit v0

    return-object v3

    :catchall_2a
    move-exception p0

    .line 441
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private getNetwork(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
    .registers 7

    .line 726
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getNetwork"

    .line 728
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 729
    monitor-exit v0

    return-object v2

    :cond_e
    const-string v3, "getNetwork"

    .line 730
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object v3

    if-nez v3, :cond_18

    .line 731
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    return-object v2

    .line 734
    :cond_18
    :try_start_18
    invoke-interface {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_2e
    .catchall {:try_start_18 .. :try_end_1c} :catchall_36

    if-nez v1, :cond_20

    .line 736
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_36

    return-object v2

    .line 738
    :cond_20
    :try_start_20
    invoke-interface {v3, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->getNetwork(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    move-result-object p2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_2e
    .catchall {:try_start_20 .. :try_end_24} :catchall_36

    if-nez p2, :cond_28

    .line 740
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_36

    return-object v2

    .line 742
    :cond_28
    :try_start_28
    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getStaNetworkHalMockable(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    move-result-object p0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2c} :catch_2e
    .catchall {:try_start_28 .. :try_end_2c} :catchall_36

    :try_start_2c
    monitor-exit v0

    return-object p0

    :catch_2e
    move-exception p1

    const-string p2, "getNetwork"

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 746
    monitor-exit v0

    return-object v2

    :catchall_36
    move-exception p0

    .line 747
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw p0
.end method

.method private getNetworkHal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
    .registers 6

    .line 844
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v2, "getSupplicantStaNetwork via AIDL"

    .line 845
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_26

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong supplicant network id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    monitor-exit v0

    return-object v2

    .line 850
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getNetwork(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    move-result-object p0

    if-nez p0, :cond_35

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "Failed to get a network!"

    .line 852
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v0

    return-object v2

    .line 855
    :cond_35
    monitor-exit v0

    return-object p0

    :catchall_37
    move-exception p0

    .line 856
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method private getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;
    .registers 6

    .line 445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getSehIface"

    .line 447
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 448
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    return-object v3

    .line 451
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;->getStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_14} :catch_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_2a

    :try_start_14
    monitor-exit v0

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Encountered exception at getSehIface: "

    .line 457
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_1f
    move-exception p1

    .line 455
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_28

    :catch_24
    move-exception p1

    .line 453
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 459
    :goto_28
    monitor-exit v0

    return-object v3

    :catchall_2a
    move-exception p0

    .line 460
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private getSehStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;
    .registers 3

    .line 821
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 823
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 817
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getVendorVersion()I
    .registers 2

    .line 1155
    sget p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->vendorReleaseVersion:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    const-string p0, "ro.vendor.build.version.release"

    .line 1156
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1159
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->vendorReleaseVersion:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_17} :catch_17

    .line 1164
    :catch_17
    :cond_17
    sget p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->vendorReleaseVersion:I

    return p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->clearState()V

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with remote exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->clearState()V

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with remote exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .registers 6

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with service specific exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .registers 6

    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with service specific exception: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private static synthetic lambda$probeStaIfaceNames$0(Ljava/util/List;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;)V
    .registers 2

    .line 341
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;->name:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private linkToSupplicantDeath(Landroid/os/IBinder;)V
    .registers 4

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$SupplicantDeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception p1

    const-string v0, "linkToSupplicantDeath"

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method private listNetworks(Ljava/lang/String;)[I
    .registers 5

    .line 794
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "listNetworks"

    .line 796
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 798
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    return-object v1

    .line 801
    :cond_e
    :try_start_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->listNetworks()[I

    move-result-object p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_12} :catch_14
    .catchall {:try_start_e .. :try_end_12} :catchall_23

    :try_start_12
    monitor-exit v0

    return-object p0

    :catch_14
    move-exception p1

    const-string v2, "listNetworks"

    .line 805
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_21

    :catch_1b
    move-exception p1

    const-string v2, "listNetworks"

    .line 803
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 807
    :goto_21
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p0

    .line 808
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;)Z
    .registers 6

    .line 752
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 755
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    return v2

    .line 758
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_d} :catch_10
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    const/4 p0, 0x1

    .line 759
    :try_start_e
    monitor-exit v0

    return p0

    :catch_10
    move-exception p1

    .line 763
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_19

    :catch_15
    move-exception p1

    .line 761
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 765
    :goto_19
    monitor-exit v0

    return v2

    :catchall_1b
    move-exception p0

    .line 766
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;)Z
    .registers 6

    .line 771
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 774
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    return v2

    .line 777
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_d} :catch_10
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    const/4 p0, 0x1

    .line 778
    :try_start_e
    monitor-exit v0

    return p0

    :catch_10
    move-exception p1

    .line 782
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_19

    :catch_15
    move-exception p1

    .line 780
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 784
    :goto_19
    monitor-exit v0

    return v2

    :catchall_1b
    move-exception p0

    .line 785
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private registerNotification()Z
    .registers 2

    .line 254
    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private registerSupplicantCallback()V
    .registers 4

    const-string v0, "registerSupplicantCallback"

    .line 310
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 314
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mSupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantCallbackAidlImpl;

    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    .line 316
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private removeNetwork(Ljava/lang/String;I)Z
    .registers 7

    .line 675
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "removeNetwork"

    .line 677
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 679
    monitor-exit v0

    return v2

    :cond_e
    const-string v3, "removeNetwork"

    .line 681
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p1

    if-nez p1, :cond_18

    .line 683
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_30

    return v2

    .line 686
    :cond_18
    :try_start_18
    invoke-interface {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeNetwork(I)V

    .line 687
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->removeNetwork(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_18 .. :try_end_1e} :catch_21
    .catchall {:try_start_18 .. :try_end_1e} :catchall_30

    const/4 p0, 0x1

    .line 688
    :try_start_1f
    monitor-exit v0

    return p0

    :catch_21
    move-exception p1

    const-string p2, "removeNetwork"

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_2e

    :catch_28
    move-exception p1

    const-string p2, "removeNetwork"

    .line 690
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 694
    :goto_2e
    monitor-exit v0

    return v2

    :catchall_30
    move-exception p0

    .line 695
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw p0
.end method

.method public static serviceDeclared()Z
    .registers 1

    .line 560
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 563
    :cond_8
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 893
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setExtendedCommand"

    .line 895
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_e

    .line 897
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    return v1

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    new-array v3, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    .line 900
    invoke-interface {p1, p2, v3, v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_17} :catch_19
    .catchall {:try_start_f .. :try_end_17} :catchall_28

    :try_start_17
    monitor-exit v0

    return p0

    :catch_19
    move-exception p1

    const-string p2, "setExtendedCommand"

    .line 904
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_26

    :catch_20
    move-exception p1

    const-string p2, "setExtendedCommand"

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 906
    :goto_26
    monitor-exit v0

    return v1

    :catchall_28
    move-exception p0

    .line 907
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private setExtendedCommand(Ljava/lang/String;Ljava/lang/String;[I)I
    .registers 7

    .line 911
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setExtendedCommand"

    .line 913
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_e

    .line 915
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return v1

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    new-array v2, v2, [Ljava/lang/String;

    .line 918
    invoke-interface {p1, p2, p3, v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_15} :catch_17
    .catchall {:try_start_f .. :try_end_15} :catchall_26

    :try_start_15
    monitor-exit v0

    return p0

    :catch_17
    move-exception p1

    const-string p2, "setExtendedCommand"

    .line 922
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_24

    :catch_1e
    move-exception p1

    const-string p2, "setExtendedCommand"

    .line 920
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 924
    :goto_24
    monitor-exit v0

    return v1

    :catchall_26
    move-exception p0

    .line 925
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private setupStaIface(Ljava/lang/String;)Z
    .registers 8

    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    monitor-exit v0

    return v2

    .line 370
    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    if-nez v1, :cond_45

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v0

    return v2

    .line 376
    :cond_45
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 379
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 380
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 383
    monitor-exit v0

    return p0

    :cond_64
    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register callback for iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v0

    return v2

    :catchall_7c
    move-exception p0

    .line 388
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method private setupStaSehIface(Ljava/lang/String;)Z
    .registers 8

    .line 392
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getSehStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seh iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v0

    return v2

    .line 398
    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object v1

    if-nez v1, :cond_45

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get seh iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-exit v0

    return v2

    .line 404
    :cond_45
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 407
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 408
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 411
    monitor-exit v0

    return p0

    :cond_64
    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register callback for iface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    monitor-exit v0

    return v2

    :catchall_7c
    move-exception p0

    .line 416
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method private supplicantServiceDiedHandler()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    goto :goto_d

    .line 582
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->clearState()V

    .line 583
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_29

    .line 584
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;->onDeath()V

    .line 586
    :cond_29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantServiceDeathEvent()V

    .line 587
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method


# virtual methods
.method addNetwork(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "addNetwork"

    .line 646
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 648
    monitor-exit v0

    return-object v2

    :cond_e
    const-string v3, "addNetwork"

    .line 650
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSehStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;

    move-result-object v3

    if-nez v3, :cond_18

    .line 652
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_35

    return-object v2

    .line 656
    :cond_18
    :try_start_18
    invoke-interface {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addNetwork()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    move-result-object v1

    .line 657
    invoke-interface {v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;->addNetwork()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;

    move-result-object v3

    .line 659
    invoke-virtual {p0, p1, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getStaNetworkHalMockable(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    move-result-object p0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_18 .. :try_end_24} :catch_26
    .catchall {:try_start_18 .. :try_end_24} :catchall_35

    :try_start_24
    monitor-exit v0

    return-object p0

    :catch_26
    move-exception p1

    const-string v1, "addNetwork"

    .line 663
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_33

    :catch_2d
    move-exception p1

    const-string v1, "addNetwork"

    .line 661
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 665
    :goto_33
    monitor-exit v0

    return-object v2

    :catchall_35
    move-exception p0

    .line 666
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "addRoamScanChannels was deprecated"

    .line 1278
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "addRoamScanChannelsLegacy was deprecated"

    .line 1284
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANFREQUENCIES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1292
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANFREQUENCIES_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1303
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method attachDaemon()Z
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Service is already initialized, skipping attachDaemon"

    .line 272
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit v0

    return v2

    .line 275
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 277
    monitor-exit v0

    return v3

    .line 279
    :cond_1a
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->linkToSupplicantDeath(Landroid/os/IBinder;)V

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-nez v1, :cond_2e

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Unable to obtain ISupplicant binder."

    .line 283
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit v0

    return v3

    .line 286
    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->registerSupplicantCallback()V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    if-nez v1, :cond_40

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v3, "Unable to obtain ISehSupplicantExt binder"

    .line 290
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to supplicant aidl service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantExt:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    if-eqz v4, :cond_53

    const-string v4, "with extension"

    goto :goto_55

    :cond_53
    const-string v4, ""

    :goto_55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantServiceRegistrationEvent()V

    .line 295
    monitor-exit v0

    return v2

    :catchall_66
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .registers 5

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLEAR_TWT_STATISTICS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1557
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public deregisterDeathHandler()Z
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-nez v1, :cond_e

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v2, "No Death handler present"

    .line 525
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    .line 527
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    const/4 p0, 0x1

    .line 528
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 529
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEAKY_AP_ACTIVE_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1601
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1603
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .registers 5

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_ELNABYPASS_THRESHOLD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1671
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 1673
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_ELNA_STATUS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1685
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1686
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .registers 5

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEACON_RECV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string p2, "start"

    goto :goto_11

    :cond_f
    const-string p2, "stop"

    :goto_11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 962
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_21

    if-ltz p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    :catch_21
    move-exception p0

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public enableVerboseLogging(Z)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public endLeakyApPassiveDetection(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "LEAKY_AP_PASSIVE_DETECTION_END"

    .line 1623
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v0, "General exception LEAKY_AP_PASSIVE_DETECTION_END"

    .line 1625
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GET_CU"

    .line 1012
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1013
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1015
    :try_start_c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_11

    return p0

    :catch_11
    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 952
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->getCurrentBss()Lcom/samsung/android/server/wifi/halclient/BssInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 954
    :cond_f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method protected getCurrentSupplicantNetworkId(Ljava/lang/String;)I
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 327
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLqcmReport(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GET_TDLS_MAX_SESSION"

    .line 1752
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1753
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1754
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1756
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GET_TDLS_NUM_OF_SESSION"

    .line 1764
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1765
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1766
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1768
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .registers 4

    .line 1137
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_f

    const-string v0, "GETROAMBAND"

    .line 1138
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_f
    const-string v0, "GETBAND"

    .line 1140
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1142
    :goto_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_2e

    const-string p1, " "

    .line 1144
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1146
    :try_start_22
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    :cond_2e
    return v0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GETROAMDELTA"

    .line 1083
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1084
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1085
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1087
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "getRoamScanChannels was deprecated"

    .line 1218
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "getRoamScanChannelsLegacy was deprecated"

    .line 1224
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .registers 2

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "getRoamScanControl was deprecated"

    .line 1206
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GETROAMSCANPERIOD"

    .line 1107
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1109
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1111
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GETROAMTRIGGER"

    .line 1046
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1047
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1048
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1050
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public getRoamTriggerLegacy(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GETROAMTRIGGER_LEGACY"

    .line 1059
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1060
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1061
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1063
    :try_start_12
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method protected getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object p0

    .line 623
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v2, "obtaining ISehSupplicantExt binder extension"

    .line 625
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_24
    .catchall {:try_start_3 .. :try_end_18} :catchall_22

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_22

    return-object p0

    :cond_1a
    :try_start_1a
    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "could not get extension of ISupplicant binder"

    .line 628
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_24
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_3b

    :catchall_22
    move-exception p0

    goto :goto_3e

    :catch_24
    move-exception p0

    :try_start_25
    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISehSupplicantExt service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    const/4 p0, 0x0

    .line 633
    monitor-exit v0

    return-object p0

    .line 634
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_22

    throw p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 594
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_27

    :catch_d
    move-exception v0

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISupplicant service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 598
    monitor-exit p0

    return-object v0

    .line 599
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_b

    throw v0
.end method

.method public getSnr(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected getStaNetworkHalMockable(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;
    .registers 12

    .line 710
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    new-instance v7, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 715
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    invoke-virtual {v7, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;->enableVerboseLogging(Z)V

    .line 717
    monitor-exit v0

    return-object v7

    :catchall_17
    move-exception p0

    .line 718
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object p0

    .line 610
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_29

    :catch_f
    move-exception p0

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISupplicant service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 613
    monitor-exit v0

    return-object p0

    .line 615
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_d

    throw p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "GET_STA_DUMP"

    .line 1777
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1778
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "GET_UWBCX_ENABLE"

    .line 1708
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1709
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    const-string p1, " "

    .line 1710
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1711
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()Z
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Service is already initialized, skipping initialize method"

    .line 239
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v0

    return v2

    .line 242
    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1c

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v3, "Checking for ISupplicant service."

    .line 243
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 247
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->registerNotification()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mServiceDeclared:Z

    .line 248
    monitor-exit v0

    return v2

    :catchall_38
    move-exception p0

    .line 249
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GET_TDLS_AVAILABLE"

    .line 1720
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-nez p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catch_b
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "General exception GET_TDLS_AVAILABLE"

    .line 1722
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isInitSehSupplicantComplete()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInitializationComplete()Z
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 547
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mServiceDeclared:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 538
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GETNCHOMODE"

    .line 1181
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const-string p1, " "

    .line 1183
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1185
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_21

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_21

    if-ne p0, p1, :cond_21

    move v0, p1

    :catch_21
    :cond_21
    return v0
.end method

.method public isVerboseLoggingEnabled()Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "isWesModeEnabled was deprecated"

    .line 1236
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GET_TDLS_WIDER_BW"

    .line 1731
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-nez p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catch_b
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "General exception GET_TDLS_WIDER_BW"

    .line 1733
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method protected logCallback(Ljava/lang/String;)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_22

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIfaceCallback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method protected logSehCallback(Ljava/lang/String;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_22

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIfaceCallback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public probeStaIfaceNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "probeStaIfaceNames"

    .line 334
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 337
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_43

    .line 339
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->listInterfaces()[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 341
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2a} :catch_3b
    .catch Landroid/os/ServiceSpecificException; {:try_start_16 .. :try_end_2a} :catch_34
    .catch Ljava/util/NoSuchElementException; {:try_start_16 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_2a} :catch_2b
    .catchall {:try_start_16 .. :try_end_2a} :catchall_43

    goto :goto_41

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string v2, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v3, "Encountered exception at probeStaIfaceNames: "

    .line 348
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    :catch_34
    move-exception v2

    const-string v3, "probeStaIfaceNames"

    .line 346
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_41

    :catch_3b
    move-exception v2

    const-string v3, "probeStaIfaceNames"

    .line 344
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 350
    :cond_41
    :goto_41
    monitor-exit v0

    return-object v1

    :catchall_43
    move-exception p0

    .line 351
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_43

    throw p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "GET_SCHED_PM_STATUS"

    .line 1589
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "GET_TWT_CAP"

    .line 1523
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_TWT_STATISTICS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1545
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1546
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_TWT_STATUS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1534
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getExtendedInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1535
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_e

    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v2, "Death handler already present"

    .line 511
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_e
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    const/4 p0, 0x1

    .line 514
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 515
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .registers 4

    .line 884
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 888
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 889
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_INFO_FRM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1513
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public saveDebugDump(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public saveSupplicantNetworkId(Ljava/lang/String;I)Z
    .registers 7

    .line 861
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemSupplicantStaIfaceHalAidlImpl"

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSupplicantNetworkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_35

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 864
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong supplicant network id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    monitor-exit v0

    return v2

    .line 867
    :cond_35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getNetworkHal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalAidlImpl;

    move-result-object v1

    if-nez v1, :cond_5d

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get network configuration: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    monitor-exit v0

    return v2

    .line 875
    :cond_5d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 878
    monitor-exit v0

    return p0

    :catchall_6e
    move-exception p0

    .line 879
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASSOC_FREQUENCY_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1263
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "sendLegacyReassociationRequestFrame was deprecated"

    .line 1255
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "sendReassociationRequestFrame was deprecated"

    .line 1272
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "sendVendorSpecificActionFrame was deprecated"

    .line 1249
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_ADPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string p2, "1"

    goto :goto_11

    :cond_f
    const-string p2, "0"

    :goto_11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1445
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_21

    if-nez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    :catch_21
    move-exception p0

    .line 1447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .registers 5

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCIE_IRQ_CORE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 979
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DELAYED_WAKEUP_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1656
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .registers 5

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_FCC_CHANNEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1314
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_INDOOR_CHANNELS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 1324
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1325
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1326
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v3, v0

    :goto_21
    if-ge v3, p2, :cond_3a

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1330
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1332
    :try_start_3e
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_46

    if-ltz p0, :cond_45

    const/4 v0, 0x1

    :cond_45
    return v0

    :catch_46
    move-exception p0

    .line 1334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 5

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_LATENCY_CRT_DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1355
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_GRACE_PERIOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1634
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1636
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETNCHOMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1197
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .registers 5

    .line 1121
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_1a

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    .line 1124
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2b
    const/4 v0, 0x0

    .line 1127
    :try_start_2c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_34

    if-ltz p0, :cond_33

    const/4 v0, 0x1

    :cond_33
    return v0

    :catch_34
    move-exception p0

    .line 1129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .registers 5

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMDELTA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1074
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "setRoamScanChannels was deprecated"

    .line 1230
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanControl(Ljava/lang/String;I)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "setRoamScanControl was deprecated"

    .line 1212
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .registers 5

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMSCANPERIOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1098
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .registers 5

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMTRIGGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1026
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .registers 5

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMTRIGGER_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1037
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DWELL_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1366
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2c

    :catch_15
    move-exception p0

    .line 1368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TDLS_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string p2, "1"

    goto :goto_11

    :cond_f
    const-string p2, "0"

    :goto_11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1743
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_21

    if-nez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    :catch_21
    move-exception p0

    .line 1745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setTidMode(Ljava/lang/String;III)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .registers 5

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1376
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .registers 6

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1387
    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_22

    if-ltz p0, :cond_21

    const/4 p3, 0x1

    :cond_21
    return p3

    :catch_22
    move-exception p0

    .line 1389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .registers 3

    const-string p0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string p1, "setWesModeEnabled was deprecated"

    .line 1242
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_CUSTOM_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1788
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .registers 11

    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETWTCMODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1433
    :try_start_34
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "setWifiToCellular called : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4c} :catch_50

    if-nez p0, :cond_4f

    const/4 p3, 0x1

    :cond_4f
    return p3

    :catch_50
    move-exception p0

    .line 1436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "General exception "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .registers 9

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_UWBCX_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1698
    :try_start_2c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_34

    if-ltz p0, :cond_33

    const/4 p3, 0x1

    :cond_33
    return p3

    :catch_34
    move-exception p0

    .line 1700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "General exception "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .registers 6

    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETWSECINFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_14
    const-string v2, "setWsecInfo called"

    .line 1404
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_21

    if-ltz p0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :catch_21
    move-exception p0

    .line 1407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 3

    .line 356
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setupStaIface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 357
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setupStaSehIface(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCHED_PM_SETUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1568
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_SETUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1480
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEAKY_AP_PASSIVE_DETECTION_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1612
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_INFO_FRM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1502
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownIface"

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 474
    monitor-exit v0

    return v2

    :cond_e
    const-string v1, "teardownIface"

    .line 476
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 477
    monitor-exit v0

    return v2

    .line 480
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 484
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    .line 501
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "SCHED_PM_TEARDOWN"

    .line 1579
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v0, "General exception SCHED_PM_TEARDOWN"

    .line 1581
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_TEARDOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1491
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DELAYED_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1645
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1a

    if-ltz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 1647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalAidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;BBB[B)Z
    .registers 9

    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    const/4 p3, 0x2

    aput p4, v1, p3

    .line 1416
    aget-byte p3, p5, v2

    const/4 p4, 0x3

    aput p3, v1, p4

    aget-byte p3, p5, p2

    const/4 p4, 0x4

    aput p3, v1, p4

    :try_start_18
    const-string p3, "updateCellularCapabilities called"

    .line 1418
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "updateCellularCapabilities"

    .line 1419
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;[I)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_27

    if-nez p0, :cond_26

    move v2, p2

    :cond_26
    return v2

    :catch_27
    move-exception p0

    const-string p1, "General exception updateCellularCapabilities"

    .line 1421
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
