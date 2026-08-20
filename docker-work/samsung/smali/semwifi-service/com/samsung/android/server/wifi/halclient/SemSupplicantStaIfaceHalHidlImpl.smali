.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHalHidlImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_1;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_4;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;,
        Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final ANDROID_VERSION_ROS:I = 0xb

.field private static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaIfaceHalHidlImpl"

.field private static final UNINITIALIZED:I = -0x1

.field static vendorReleaseVersion:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentNetworkRemoteHandles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;",
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

.field private mDeathRecipientCookie:J

.field private final mEventHandler:Landroid/os/Handler;

.field private mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

.field private final mISehSupplicantStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mISehSupplicantStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private final mISupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;

.field private final mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mISupplicantStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mSehSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;

.field private mSehSupplicantDeathRecipientCookie:J

.field private final mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public static synthetic $r8$lambda$5OcqP9vO-C0lQs98T5IGQ3SJJNM(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$getExtendedInfomation$6(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HzHFpkiIUp7_rK8gpcPrwOMgrPw(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$getNetwork$4(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J0MZ1d6zFYz-HXVIa50WDCU3tUE(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$getIfaceV1_0$2(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WC7LAKtc8kPLcBgDNScltV87noU(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantNetwork;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$getNetwork$5(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantNetwork;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m5WNOdjCctT4b9J_Bd0lfoXWfyY(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$probeStaIfaceNames$0(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEkB_rTwg1lStnnQ1r-fh48JTrI(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$addSehIface$3(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qocWq0k961T_r1j0QHMhg9EzpsU(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->lambda$getIfaceV1_0$1(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeathRecipientCookie(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISupplicantCallback(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSehSupplicantDeathRecipientCookie(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIServiceManager(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSehSupplicantService(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->initSehSupplicantService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitSupplicantService(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->initSupplicantService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterSupplicantHalCallback(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerSupplicantHalCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msehSupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->supplicantServiceDiedHandler(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Handler;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    .line 95
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    .line 99
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 169
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 171
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mEventHandler:Landroid/os/Handler;

    .line 173
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;

    .line 174
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;

    .line 175
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;

    .line 176
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantCallback:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantHalCallback;

    .line 178
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    .line 179
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    .line 180
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    .line 181
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    .line 182
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    .line 183
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    return-void
.end method

.method private addSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;
    .registers 7

    .line 643
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    new-instance v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;

    invoke-direct {v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;-><init>()V

    .line 645
    iput-object p1, v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 646
    iput p1, v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;->type:I

    .line 647
    new-instance p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_8e

    const/4 v2, 0x0

    .line 649
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v3

    if-nez v3, :cond_22

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v1, "ISehSupplicant.addInterface getSehSupplicantMockable is null"

    .line 650
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_20} :catch_70
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_20} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_20} :catch_34
    .catchall {:try_start_13 .. :try_end_20} :catchall_8e

    .line 651
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_8e

    return-object v2

    .line 653
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v3, v1, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->addInterface(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$addInterfaceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_70
    .catch Ljava/util/NoSuchElementException; {:try_start_22 .. :try_end_2e} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2e} :catch_34
    .catchall {:try_start_22 .. :try_end_2e} :catchall_8e

    .line 675
    :try_start_2e
    iget-object p0, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;

    monitor-exit v0

    return-object p0

    :catch_34
    move-exception p1

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "addInterface"

    .line 672
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehNullPointerException(Ljava/lang/NullPointerException;Ljava/lang/String;)V

    .line 673
    monitor-exit v0

    return-object v2

    :catch_52
    move-exception p1

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "addInterface"

    .line 668
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleNoSuchSehElementException(Ljava/util/NoSuchElementException;Ljava/lang/String;)V

    .line 669
    monitor-exit v0

    return-object v2

    :catch_70
    move-exception p1

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "addInterface"

    .line 664
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 665
    monitor-exit v0

    return-object v2

    :catchall_8e
    move-exception p0

    .line 676
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_2e .. :try_end_90} :catchall_8e

    throw p0
.end method

.method private checkHalVersionByInterfaceName(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 979
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 980
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    if-nez v2, :cond_14

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "checkHalVersionByInterfaceName: called but mServiceManager is null"

    .line 981
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_3d

    return v0

    :cond_14
    :try_start_14
    const-string v3, "default"

    .line 985
    invoke-interface {v2, p1, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1f
    .catchall {:try_start_14 .. :try_end_1a} :catchall_3d

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :try_start_1d
    monitor-exit v1

    return v0

    :catch_1f
    move-exception p1

    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while operating on IServiceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "getTransport"

    .line 991
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 992
    monitor-exit v1

    return v0

    :catchall_3d
    move-exception p0

    .line 994
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method private checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z
    .registers 6

    .line 1372
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_3
    iget v1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    if-eqz v1, :cond_28

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1375
    monitor-exit v0

    return p0

    .line 1377
    :cond_28
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_47

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISehSupplicantStaIface."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x1

    .line 1380
    monitor-exit v0

    return p0

    :catchall_4a
    move-exception p0

    .line 1382
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;
    .registers 5

    .line 1317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p0

    if-nez p0, :cond_27

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t call "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ISehSupplicantStaIface is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1321
    monitor-exit v0

    return-object p0

    .line 1323
    :cond_27
    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    .line 1324
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .registers 6

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_3
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_28

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1336
    monitor-exit v0

    return p0

    .line 1338
    :cond_28
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_47

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISupplicantStaIface."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x1

    .line 1341
    monitor-exit v0

    return p0

    :catchall_4a
    move-exception p0

    .line 1343
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;Ljava/lang/String;)Z
    .registers 6

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2c

    .line 1354
    :try_start_5
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->code:I

    if-eqz v1, :cond_a

    goto :goto_2c

    .line 1358
    :cond_a
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_29

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISupplicantStaIface."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 p0, 0x1

    .line 1361
    monitor-exit v0

    return p0

    :cond_2c
    :goto_2c
    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1356
    monitor-exit v0

    return p0

    :catchall_4d
    move-exception p0

    .line 1363
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 1288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez p0, :cond_25

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1290
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

    .line 1291
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 1293
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 1294
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .registers 5

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object p0

    if-nez p0, :cond_27

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t call "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ISupplicantStaIface is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1306
    monitor-exit v0

    return-object p0

    .line 1308
    :cond_27
    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    .line 1309
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private clearSehState()V
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 758
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    .line 759
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 760
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private clearState()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 732
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 733
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 734
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 735
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 736
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;
    .registers 2

    .line 1015
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    return-object p0
.end method

.method private getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1534
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getExtendedInfomation"

    .line 1536
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 1537
    monitor-exit v0

    return-object p0

    .line 1538
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 1540
    :try_start_13
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p1, p2, v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->getExtendedInfomation(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface$getExtendedInfomationCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c
    .catchall {:try_start_13 .. :try_end_1b} :catchall_28

    goto :goto_22

    :catch_1c
    move-exception p1

    :try_start_1d
    const-string p2, "getExtendedInfomation"

    .line 1547
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1549
    :goto_22
    iget-object p0, v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_28
    move-exception p0

    .line 1550
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .registers 8

    .line 591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 593
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_96

    .line 595
    :try_start_f
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_78
    .catchall {:try_start_f .. :try_end_19} :catchall_96

    .line 608
    :try_start_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_28

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    .line 609
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    monitor-exit v0

    return-object v2

    .line 612
    :cond_28
    new-instance v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 614
    iget v5, v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v5, :cond_31

    iget-object v5, v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_47
    .catchall {:try_start_19 .. :try_end_47} :catchall_96

    if-eqz v5, :cond_31

    .line 616
    :try_start_49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p1, v4, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_53} :catch_54
    .catchall {:try_start_49 .. :try_end_53} :catchall_96

    goto :goto_72

    :catch_54
    move-exception p1

    :try_start_55
    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicant.getInterface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "getInterface"

    .line 626
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 627
    monitor-exit v0

    return-object v2

    .line 632
    :cond_72
    :goto_72
    iget-object p0, v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object p0

    :catch_78
    move-exception p1

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "listInterfaces"

    .line 605
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 606
    monitor-exit v0

    return-object v2

    :catchall_96
    move-exception p0

    .line 633
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_55 .. :try_end_98} :catchall_96

    throw p0
.end method

.method private getNetwork(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;
    .registers 9

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getNetwork"

    .line 1116
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1117
    monitor-exit v0

    return-object v2

    .line 1118
    :cond_e
    new-instance v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_66

    .line 1120
    :try_start_13
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v1, p2, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c
    .catchall {:try_start_13 .. :try_end_1b} :catchall_66

    goto :goto_22

    :catch_1c
    move-exception v1

    :try_start_1d
    const-string v4, "getNetwork"

    .line 1126
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_22
    const-string v1, "getNetwork"

    .line 1128
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 1129
    monitor-exit v0

    return-object v2

    .line 1130
    :cond_2c
    new-instance v4, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_66

    .line 1132
    :try_start_31
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v1, p2, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getNetwork(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getNetworkCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_39} :catch_3a
    .catchall {:try_start_31 .. :try_end_39} :catchall_66

    goto :goto_40

    :catch_3a
    move-exception p2

    :try_start_3b
    const-string v1, "getNetwork"

    .line 1138
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1140
    :goto_40
    iget-object p2, v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    if-eqz p2, :cond_64

    iget-object v1, v4, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    if-eqz v1, :cond_64

    .line 1141
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1143
    invoke-interface {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    move-result-object p2

    iget-object v1, v4, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantNetwork;

    .line 1144
    invoke-interface {v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;

    move-result-object v1

    .line 1141
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaNetworkMockable(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1146
    :cond_64
    monitor-exit v0

    return-object v2

    :catchall_66
    move-exception p0

    .line 1148
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3b .. :try_end_68} :catchall_66

    throw p0
.end method

.method private getNetworkHal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;
    .registers 6

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getSupplicantStaNetwork via HIDL"

    .line 1036
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logi(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_22

    .line 1038
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Wrong supplicant network id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    .line 1039
    monitor-exit v0

    return-object v2

    .line 1041
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getNetwork(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    move-result-object p0

    if-nez p0, :cond_2f

    const-string p0, "Failed to get a network!"

    .line 1043
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    .line 1044
    monitor-exit v0

    return-object v2

    .line 1046
    :cond_2f
    monitor-exit v0

    return-object p0

    :catchall_31
    move-exception p0

    .line 1047
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private getSehStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;
    .registers 2

    .line 1008
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    return-object p0
.end method

.method private getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .registers 2

    .line 1001
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    return-object p0
.end method

.method private getVendorVersion()I
    .registers 2

    .line 1869
    sget p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->vendorReleaseVersion:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    const-string p0, "ro.vendor.build.version.release"

    .line 1870
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1871
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1873
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->vendorReleaseVersion:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_17} :catch_17

    .line 1877
    :catch_17
    :cond_17
    sget p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->vendorReleaseVersion:I

    return p0
.end method

.method private handleNoSuchSehElementException(Ljava/util/NoSuchElementException;Ljava/lang/String;)V
    .registers 6

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearSehState()V

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1409
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearState()V

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private handleSehNullPointerException(Ljava/lang/NullPointerException;Ljava/lang/String;)V
    .registers 6

    .line 1429
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearSehState()V

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
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

    .line 1422
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearSehState()V

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantStaIface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1425
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private initSehSupplicantService()Z
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 325
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_22
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_a} :catch_22
    .catchall {:try_start_4 .. :try_end_a} :catchall_20

    if-nez v2, :cond_15

    :try_start_c
    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v2, "Got null ISehSupplicant service. Stopping supplicant HIDL startup"

    .line 331
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v0

    return v1

    .line 334
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->linkToSehSupplicantDeath()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 335
    monitor-exit v0

    return v1

    .line 337
    :cond_1d
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    goto :goto_3b

    :catch_22
    move-exception p0

    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit v0

    return v1

    .line 337
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_20

    throw p0
.end method

.method private initSupplicantService()Z
    .registers 8

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 289
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_a} :catch_2b
    .catchall {:try_start_4 .. :try_end_a} :catchall_29

    if-nez v2, :cond_15

    :try_start_c
    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v2, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    .line 295
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v0

    return v1

    .line 298
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantDeathRecipient;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->linkToSupplicantDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    if-nez p0, :cond_26

    .line 299
    monitor-exit v0

    return v1

    .line 301
    :cond_26
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_29
    move-exception p0

    goto :goto_44

    :catch_2b
    move-exception p0

    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0

    return v1

    .line 301
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_29

    throw p0
.end method

.method private isV1_1()Z
    .registers 2

    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicant"

    .line 936
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isV1_2()Z
    .registers 2

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicant"

    .line 946
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isV1_3()Z
    .registers 2

    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicant"

    .line 956
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isV1_4()Z
    .registers 2

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicant"

    .line 961
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isV3_1()Z
    .registers 2

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicant"

    .line 971
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkHalVersionByInterfaceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addSehIface$3(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V
    .registers 5

    .line 655
    iget v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    if-eqz v0, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    .line 657
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create ISehSupplicantIface "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$getExtendedInfomation$6(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)V
    .registers 5

    const-string v0, "getExtendedInfomation"

    .line 1542
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1543
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static synthetic lambda$getIfaceV1_0$1(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 4

    .line 597
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_1d

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 601
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$getIfaceV1_0$2(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 4

    .line 618
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_1d

    .line 619
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get ISupplicantIface "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 622
    :cond_1d
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$getNetwork$4(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .registers 5

    const-string v0, "getNetwork"

    .line 1121
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1122
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private synthetic lambda$getNetwork$5(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantNetwork;)V
    .registers 5

    const-string v0, "getNetwork"

    .line 1133
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1134
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static synthetic lambda$probeStaIfaceNames$0(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 4

    .line 357
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_1d

    .line 358
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 361
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private linkToSehSupplicantDeath()Z
    .registers 9

    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_34

    return v2

    .line 309
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantDeathRecipient;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v3, "Error on linkToDeath on ISehSupplicant"

    .line 310
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_2a
    .catchall {:try_start_a .. :try_end_25} :catchall_34

    .line 312
    :try_start_25
    monitor-exit v0

    return v2

    :cond_27
    const/4 p0, 0x1

    .line 318
    monitor-exit v0

    return p0

    :catch_2a
    move-exception p0

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v3, "ISehSupplicant.linkToDeath exception"

    .line 315
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    monitor-exit v0

    return v2

    :catchall_34
    move-exception p0

    .line 319
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_34

    throw p0
.end method

.method private linkToServiceManagerDeath()Z
    .registers 8

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_39

    return v2

    :cond_a
    const/4 v3, 0x0

    .line 205
    :try_start_b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$ServiceManagerDeathRecipient;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v4, "Error on linkToDeath on IServiceManager"

    .line 206
    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->supplicantServiceDiedHandler(J)V

    .line 208
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler(J)V

    .line 209
    iput-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_28} :catch_2d
    .catchall {:try_start_b .. :try_end_28} :catchall_39

    .line 210
    :try_start_28
    monitor-exit v0

    return v2

    :cond_2a
    const/4 p0, 0x1

    .line 217
    monitor-exit v0

    return p0

    :catch_2d
    move-exception v1

    const-string v4, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v5, "IServiceManager.linkToDeath exception"

    .line 213
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    iput-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 215
    monitor-exit v0

    return v2

    :catchall_39
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method private linkToSupplicantDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 7

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    return v2

    .line 273
    :cond_a
    :try_start_a
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "Error on linkToDeath on ISupplicant"

    .line 274
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->supplicantServiceDiedHandler(J)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_21
    .catchall {:try_start_a .. :try_end_1c} :catchall_2b

    .line 276
    :try_start_1c
    monitor-exit v0

    return v2

    :cond_1e
    const/4 p0, 0x1

    .line 282
    monitor-exit v0

    return p0

    :catch_21
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p2, "ISupplicant.linkToDeath exception"

    .line 279
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    monitor-exit v0

    return v2

    :catchall_2b
    move-exception p0

    .line 283
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1485
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1493
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1489
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z
    .registers 5

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1156
    :try_start_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_1e

    return v1

    .line 1158
    :cond_8
    :try_start_8
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    const-string p2, "registerCallback"

    .line 1159
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catchall {:try_start_8 .. :try_end_12} :catchall_1e

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    const-string p2, "registerCallback"

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1162
    monitor-exit v0

    return v1

    .line 1164
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    throw p0

    :catchall_1e
    move-exception p0

    goto :goto_1c
.end method

.method private registerCallbackV1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z
    .registers 6

    .line 1170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback_1_1"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 1173
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 1175
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    .line 1176
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    .line 1178
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1179
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception p0

    .line 1181
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private registerCallbackV1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Z
    .registers 6

    .line 1187
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback_1_2"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 1190
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 1192
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->registerCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    .line 1193
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    .line 1195
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1196
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception p0

    .line 1198
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private registerCallbackV1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Z
    .registers 6

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback_1_3"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 1207
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 1209
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->registerCallback_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    .line 1210
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    .line 1212
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1213
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception p0

    .line 1215
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private registerCallbackV1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;)Z
    .registers 6

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback_1_4"

    const/4 v2, 0x0

    if-nez p1, :cond_a

    .line 1224
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 1227
    :cond_a
    :try_start_a
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p1

    .line 1228
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    .line 1230
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1231
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception p0

    .line 1233
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;)Z
    .registers 5

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1241
    :try_start_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_1e

    return v1

    .line 1243
    :cond_8
    :try_start_8
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    const-string p2, "registerSehCallback"

    .line 1244
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catchall {:try_start_8 .. :try_end_12} :catchall_1e

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    const-string p2, "registerSehCallback"

    .line 1246
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1247
    monitor-exit v0

    return v1

    .line 1249
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    throw p0

    :catchall_1e
    move-exception p0

    goto :goto_1c
.end method

.method private registerSehCallbackV3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;)Z
    .registers 5

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1257
    :try_start_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_1e

    return v1

    .line 1259
    :cond_8
    :try_start_8
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;->registerCallback_3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    const-string p2, "registerSehCallbackV3_1"

    .line 1260
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catchall {:try_start_8 .. :try_end_12} :catchall_1e

    :try_start_12
    monitor-exit v0

    return p0

    :catch_14
    move-exception p1

    const-string p2, "registerSehCallbackV3_1"

    .line 1262
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1263
    monitor-exit v0

    return v1

    .line 1265
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    throw p0

    :catchall_1e
    move-exception p0

    goto :goto_1c
.end method

.method private registerSupplicantHalCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Z
    .registers 5

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback"

    .line 1272
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    return v2

    .line 1274
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-interface {v1, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    const-string v1, "registerCallback"

    .line 1276
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkStatusAndLogFailure(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1c
    .catchall {:try_start_e .. :try_end_1a} :catchall_24

    :try_start_1a
    monitor-exit v0

    return p0

    :catch_1c
    move-exception p1

    const-string v1, "registerCallback"

    .line 1278
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1279
    monitor-exit v0

    return v2

    :catchall_24
    move-exception p0

    .line 1281
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p0
.end method

.method private sehSupplicantServiceDiedHandler(J)V
    .registers 6

    .line 764
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    cmp-long p1, v1, p1

    if-eqz p1, :cond_12

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "sehSupplicantServiceDiedHandler: Ignoring stale death recipient notification"

    .line 766
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    monitor-exit v0

    return-void

    .line 769
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearSehState()V

    .line 770
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static serviceDeclared()Z
    .registers 4

    const/4 v0, 0x0

    .line 803
    :try_start_1
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    if-eqz v1, :cond_12

    const-string v3, "default"

    .line 805
    invoke-interface {v1, v2, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :catch_13
    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v2, "Unable to check for existence of HIDL service."

    .line 808
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setExtendedCommand"

    .line 1500
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 1501
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    return v1

    .line 1503
    :cond_e
    :try_start_e
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    const-string p2, "setExtendedCommand"

    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a
    .catchall {:try_start_e .. :try_end_18} :catchall_22

    :try_start_18
    monitor-exit v0

    return p0

    :catch_1a
    move-exception p1

    const-string p2, "setExtendedCommand"

    .line 1506
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1507
    monitor-exit v0

    return v1

    :catchall_22
    move-exception p0

    .line 1509
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1514
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setExtendedCommandExt"

    .line 1516
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_e

    .line 1517
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_29

    return v1

    .line 1519
    :cond_e
    :try_start_e
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    .line 1520
    iget p2, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_21
    .catchall {:try_start_e .. :try_end_14} :catchall_29

    if-nez p2, :cond_19

    const/4 p0, 0x0

    .line 1521
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_29

    return p0

    .line 1523
    :cond_19
    :try_start_19
    iget-object p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_21
    .catchall {:try_start_19 .. :try_end_1f} :catchall_29

    :try_start_1f
    monitor-exit v0

    return p0

    :catch_21
    move-exception p1

    const-string p2, "setExtendedCommandExt"

    .line 1526
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleSehRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1527
    monitor-exit v0

    return v1

    :catchall_29
    move-exception p0

    .line 1529
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private setupSehStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehStaIfaceMockable(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object v0

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->trySetupSehStaIfaceV3_1(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p0, "Newer HAL is found, skip V3_1 remaining init flow."

    .line 528
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return-object v0

    .line 532
    :cond_10
    new-instance p2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 538
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 535
    :cond_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init SehStaIface V3_0 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setupStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIfaceMockable(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->trySetupStaIfaceV1_1(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Newer HAL is found, skip V1_0 remaining init flow."

    .line 480
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return-object p2

    .line 484
    :cond_12
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackHidl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 489
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 486
    :cond_23
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init StaIface V1_0 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :cond_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Get StaIface V1_0 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private supplicantServiceDiedHandler(J)V
    .registers 6

    .line 740
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    cmp-long p1, v1, p1

    if-eqz p1, :cond_12

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "Ignoring stale death recipient notification"

    .line 742
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    monitor-exit v0

    return-void

    .line 745
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 746
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    goto :goto_1c

    .line 748
    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->clearState()V

    .line 749
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-eqz p1, :cond_38

    .line 750
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;->onDeath()V

    .line 752
    :cond_38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantServiceDeathEvent()V

    .line 753
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private trySetupSehStaIfaceV3_1(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isV3_1()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 497
    :cond_8
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSehStaIfaceMockableV3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerSehCallbackV3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 503
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 500
    :cond_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init SehStaIface V3_1 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trySetupStaIfaceV1_1(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isV1_1()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 441
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->trySetupStaIfaceV1_2(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string p0, "Newer HAL is found, skip V1_1 remaining init flow."

    .line 442
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return v1

    .line 446
    :cond_15
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIfaceMockableV1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerCallbackV1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 452
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 449
    :cond_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init StaIface V1_1 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trySetupStaIfaceV1_2(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isV1_2()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 421
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->trySetupStaIfaceV1_3(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string p0, "Newer HAL is found, skip V1_2 remaining init flow."

    .line 422
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return v1

    .line 426
    :cond_15
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIfaceMockableV1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerCallbackV1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 429
    :cond_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init StaIface V1_2 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trySetupStaIfaceV1_3(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isV1_3()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 402
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->trySetupStaIfaceV1_4(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string p0, "Newer HAL is found, skip V1_3 remaining init flow."

    .line 403
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return v1

    .line 406
    :cond_15
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIfaceMockableV1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerCallbackV1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 412
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 409
    :cond_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init StaIface V1_3 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trySetupStaIfaceV1_4(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->isV1_4()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 387
    :cond_8
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getStaIfaceMockableV1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->registerCallbackV1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 390
    :cond_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Init StaIface V1_4 failed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANCHANNELS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2080
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANCHANNELS_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2096
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2098
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANFREQUENCIES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2112
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDROAMSCANFREQUENCIES_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2128
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKTLOG_CHANGE_SIZE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2387
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .registers 5

    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLEAR_TWT_STATISTICS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2527
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public deregisterDeathHandler()Z
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-nez v0, :cond_b

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v1, "No Death handler present"

    .line 724
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    const/4 p0, 0x1

    return p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .registers 5

    .line 2633
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

    .line 2635
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 2637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_ELNA_STATUS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2649
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .registers 5

    .line 1577
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

    .line 1579
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 1581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p2, :cond_5

    const-string p2, "PKTLOG_FILTER_ENABLE"

    goto :goto_7

    :cond_5
    const-string p2, "PKTLOG_FILTER_DISABLE"

    .line 2409
    :goto_7
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 2411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enableVerboseLogging(Z)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    .line 194
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
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GET_CU"

    .line 1697
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1700
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
    .registers 4

    const-string v0, "GETCOUNTRYREV"

    .line 1891
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1892
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, " "

    .line 1893
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1894
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .registers 3

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1563
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->getCurrentBss()Lcom/samsung/android/server/wifi/halclient/BssInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1565
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

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1025
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLqcmReport(Ljava/lang/String;)I
    .registers 4

    const-string v0, "GET_LQCM_REPORT"

    .line 1658
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1659
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1f

    const-string p1, " "

    .line 1660
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1662
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .line 1663
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    return v0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .registers 4

    const-string v0, "GET_TDLS_MAX_SESSION"

    .line 2722
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2723
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1f

    const-string p1, " "

    .line 2724
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2726
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .line 2727
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    return v0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .registers 4

    const-string v0, "GET_TDLS_NUM_OF_SESSION"

    .line 2737
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2738
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1f

    const-string p1, " "

    .line 2739
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2741
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .line 2742
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    return v0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .registers 4

    .line 1851
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_f

    const-string v0, "GETROAMBAND"

    .line 1852
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_f
    const-string v0, "GETBAND"

    .line 1854
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1856
    :goto_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_2e

    const-string p1, " "

    .line 1858
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1860
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

    .line 1792
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1793
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1794
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1796
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
    .registers 4

    const-string v0, "GETROAMSCANCHANNELS"

    .line 1965
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1966
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1967
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_26

    const/4 p1, 0x0

    .line 1968
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GETROAMSCANCHANNELS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_26

    .line 1969
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "GETROAMSCANCHANNELS_LEGACY"

    .line 1982
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1983
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1984
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1b

    if-le p1, v0, :cond_26

    const/4 p1, 0x0

    .line 1985
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GETROAMSCANCHANNELS_LEGACY "

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_26

    .line 1986
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .registers 4

    const-string v0, "GETROAMSCANCONTROL"

    .line 1929
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1930
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1f

    const-string p1, " "

    .line 1931
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1933
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .line 1934
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    return v0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .registers 3

    const-string v0, "GETROAMSCANPERIOD"

    .line 1824
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1825
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1826
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1828
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

    .line 1744
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1745
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1746
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1748
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

    .line 1760
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1761
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, " "

    .line 1762
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1764
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

.method protected getSehStaIfaceMockable(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;
    .registers 2

    .line 879
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 880
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 881
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getSehStaIfaceMockableV3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;
    .registers 2

    .line 886
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 888
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 889
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 873
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 874
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 875
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 818
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 819
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getSnr(Ljava/lang/String;)I
    .registers 4

    const-string v0, "GET_SNR"

    .line 1678
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1679
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1f

    const-string p1, " "

    .line 1680
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1682
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .line 1683
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    return v0
.end method

.method protected getStaIfaceMockable(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .registers 2

    .line 893
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 894
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 895
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStaIfaceMockableV1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .registers 2

    .line 900
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 902
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 903
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStaIfaceMockableV1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;
    .registers 2

    .line 908
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 910
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 911
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStaIfaceMockableV1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;
    .registers 2

    .line 916
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 918
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 919
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStaIfaceMockableV1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;
    .registers 2

    .line 924
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 926
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 927
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStaNetworkMockable(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;
    .registers 12

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    new-instance v7, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 1103
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    invoke-virtual {v7, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->enableVerboseLogging(Z)V

    .line 1105
    monitor-exit v0

    return-object v7

    :catchall_17
    move-exception p0

    .line 1106
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 823
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 824
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 828
    monitor-exit p0

    return-object v0

    .line 826
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot get root service."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    .line 829
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getSupplicantMockableV1_1()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object p0

    .line 836
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 841
    monitor-exit v0

    return-object p0

    .line 839
    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot cast to V1.1 service."

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_17
    move-exception p0

    .line 842
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected getSupplicantMockableV1_2()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicant;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object p0

    .line 849
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicant;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 854
    monitor-exit v0

    return-object p0

    .line 852
    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot cast to V1.2 service."

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_17
    move-exception p0

    .line 855
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected getSupplicantMockableV1_3()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicant;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object p0

    .line 862
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicant;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 867
    monitor-exit v0

    return-object p0

    .line 865
    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot cast to V1.3 service."

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_17
    move-exception p0

    .line 868
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "GET_TID"

    .line 2195
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    const-string p1, " "

    .line 2197
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2198
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

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "GET_UWBCX_ENABLE"

    .line 2674
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2675
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    const-string p1, " "

    .line 2676
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2677
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
    .registers 9

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_e

    const-string v1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v2, "Registering ISupplicant service ready callback."

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 232
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 233
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    .line 234
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 235
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 238
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_7e

    return v3

    :cond_24
    const/4 v2, 0x0

    .line 241
    :try_start_25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_36

    const-string v3, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v4, "Failed to get HIDL Service Manager"

    .line 243
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_59
    .catchall {:try_start_25 .. :try_end_34} :catchall_7e

    .line 244
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_7e

    return v2

    .line 246
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_59
    .catchall {:try_start_36 .. :try_end_3a} :catchall_7e

    if-nez v4, :cond_3e

    .line 247
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_7e

    return v2

    .line 249
    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const-string v5, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicant"

    const-string v6, ""

    iget-object v7, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v3, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v4, "Failed to register for notifications to vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicant"

    .line 251
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_55} :catch_59
    .catchall {:try_start_3e .. :try_end_55} :catchall_7e

    .line 254
    :try_start_55
    monitor-exit v0

    return v2

    .line 264
    :cond_57
    monitor-exit v0

    return v3

    :catch_59
    move-exception v3

    const-string v4, "SemSupplicantStaIfaceHalHidlImpl"

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while trying to register a listener for ISehSupplicant service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathRecipientCookie:J

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->supplicantServiceDiedHandler(J)V

    .line 260
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mSehSupplicantDeathRecipientCookie:J

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler(J)V

    .line 261
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 262
    monitor-exit v0

    return v2

    :catchall_7e
    move-exception p0

    .line 265
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_55 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GET_TDLS_AVAILABLE"

    .line 2683
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2684
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const-string p1, " "

    .line 2685
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2687
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_21

    const/4 p1, 0x1

    .line 2688
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

.method public isInitSehSupplicantComplete()Z
    .registers 2

    .line 792
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

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

    .line 794
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isInitializationComplete()Z
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

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

    .line 788
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 2

    .line 777
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

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

    .line 779
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GETNCHOMODE"

    .line 1900
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1901
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const-string p1, " "

    .line 1902
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1904
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

.method protected isVerboseLoggingEnabled()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GETWESMODE"

    .line 2009
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2010
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const-string p1, " "

    .line 2011
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2013
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

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GET_TDLS_WIDER_BW"

    .line 2697
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const-string p1, " "

    .line 2699
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2701
    :try_start_13
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_21

    const/4 p1, 0x1

    .line 2702
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

.method protected logCallback(Ljava/lang/String;)V
    .registers 5

    .line 1389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1390
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_22

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1391
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

    .line 1393
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

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_22

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 1402
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

    .line 1404
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_d

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 353
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_72

    .line 355
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_50
    .catchall {:try_start_12 .. :try_end_1c} :catchall_72

    .line 368
    :try_start_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2f

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v1, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    .line 369
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 373
    :cond_2f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 375
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v3, :cond_38

    .line 376
    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 379
    :cond_4e
    monitor-exit v0

    return-object p0

    :catch_50
    move-exception v1

    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "listInterfaces"

    .line 365
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_72
    move-exception p0

    .line 380
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_72

    throw p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "GET_TWT_CAP"

    .line 2482
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2483
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

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_TWT_STATISTICS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2512
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2513
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

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_TWT_STATUS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2497
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getExtendedInfomation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2498
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z
    .registers 4

    .line 711
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    if-eqz v0, :cond_b

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v1, "Death handler already present"

    .line 712
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;

    const/4 p0, 0x1

    return p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .registers 4

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1083
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1084
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKTLOG_FILTER_DEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2371
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_INFO_FRM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2469
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public saveDebugDump(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    const-string v0, "DEBUG_DUMP"

    .line 1594
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v0, "General exception DEBUG_DUMP"

    .line 1596
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public saveSupplicantNetworkId(Ljava/lang/String;I)Z
    .registers 6

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSupplicantNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_31

    .line 1054
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Wrong supplicant network id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    .line 1055
    monitor-exit v0

    return v2

    .line 1057
    :cond_31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getNetworkHal(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    move-result-object v1

    if-nez v1, :cond_57

    .line 1062
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get network configuration: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    .line 1063
    monitor-exit v0

    return v2

    .line 1065
    :cond_57
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mCurrentSupplicantNetworkIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1068
    monitor-exit v0

    return p0

    :catchall_68
    move-exception p0

    .line 1069
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASSOC_FREQUENCY_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2054
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2056
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASSOC_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2044
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASSOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2064
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2066
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDACTIONFRAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2034
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2036
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 2337
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

    .line 2339
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 2341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .registers 5

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCIE_IRQ_CORE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v1, "setAffinityBooster"

    .line 1609
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 1613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETCOUNTRYREV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1883
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DELAYED_WAKEUP_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2620
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2622
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .registers 5

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DTIM_IN_SUSPEND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1643
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .registers 5

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_FCC_CHANNEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2144
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_INDOOR_CHANNELS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 2159
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2160
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v3, v0

    :goto_21
    if-ge v3, p2, :cond_3a

    .line 2163
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

    .line 2165
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2167
    :try_start_3e
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_43

    return p0

    :catch_43
    move-exception p0

    .line 2169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 2256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setInterwokingEnabled"

    .line 2258
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 2259
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    return v1

    .line 2261
    :cond_e
    :try_start_e
    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setInterwokingEnabled(Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    const-string p2, "setInterwokingEnabled"

    .line 2262
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a
    .catchall {:try_start_e .. :try_end_18} :catchall_22

    :try_start_18
    monitor-exit v0

    return p0

    :catch_1a
    move-exception p1

    const-string p2, "setInterwokingEnabled"

    .line 2264
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2265
    monitor-exit v0

    return v1

    :catchall_22
    move-exception p0

    .line 2267
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 5

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_LATENCY_CRT_DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2211
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .registers 5

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX_DTIM_IN_SUSPEND "

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

    .line 1627
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 1629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETNCHOMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1915
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1917
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKTLOG_FILTER_ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2355
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .registers 5

    .line 1836
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_1a

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    .line 1839
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1842
    :goto_2b
    :try_start_2b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p0

    .line 1844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .registers 5

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMDELTA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1779
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMSCANCHANNELS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2001
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanControl(Ljava/lang/String;I)Z
    .registers 5

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMSCANCONTROL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1951
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1953
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .registers 5

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMSCANPERIOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1811
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1813
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .registers 5

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMTRIGGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1715
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .registers 5

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETROAMTRIGGER_LEGACY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1731
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 1733
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_DWELL_TIME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2225
    :try_start_13
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    .line 2226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_2e

    goto :goto_43

    :catch_2e
    move-exception p0

    .line 2228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TDLS_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2713
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTidMode(Ljava/lang/String;III)Z
    .registers 7

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2182
    :try_start_1f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    .line 2184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .registers 5

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2235
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .registers 6

    .line 2243
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

    .line 2245
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 2247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .registers 5

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETWESMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2024
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_CUSTOM_TX_POWER_CALLING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2761
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .registers 11

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 2319
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

    .line 2322
    :try_start_33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setWifiToCellular called : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_4c

    return p0

    :catch_4c
    move-exception p0

    .line 2325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .registers 9

    .line 2659
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

    .line 2661
    :try_start_2b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p0

    .line 2663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "General exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .registers 6

    const-string v0, "SemSupplicantStaIfaceHalHidlImpl"

    .line 2276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETWSECINFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_13
    const-string v1, "setWsecInfo called"

    .line 2279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 2282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "setupIface"

    .line 550
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 553
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->getIfaceV1_0(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v0

    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    if-nez v0, :cond_18

    const-string p0, "setupIface got null iface"

    .line 555
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 560
    :cond_18
    :try_start_18
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setupStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v0

    .line 561
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_4e

    .line 567
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->addSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string p0, "setupIface got null sehIface"

    .line 569
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 574
    :cond_2d
    :try_start_2d
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setupSehStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object v0

    .line 575
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_38

    const/4 p0, 0x1

    return p0

    :catch_38
    move-exception p0

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setup SehStaIface failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    return v1

    :catch_4e
    move-exception p0

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setup StaIface failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_SETUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2424
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_INFO_FRM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2454
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "teardownIface"

    .line 688
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return v2

    .line 689
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "Trying to teardown unknown interface"

    .line 690
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    monitor-exit v0

    return v2

    .line 693
    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teardownIface"

    .line 695
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object v1

    if-nez v1, :cond_2e

    monitor-exit v0

    return v2

    .line 696
    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3f

    const-string p0, "SemSupplicantStaIfaceHalHidlImpl"

    const-string p1, "Trying to teardown unknown seh interface"

    .line 697
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    monitor-exit v0

    return v2

    .line 700
    :cond_3f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mISehSupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 702
    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    .line 703
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWT_TEARDOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2439
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommandExt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_DELAYED_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2604
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->setExtendedCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 2606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "General exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemSupplicantStaIfaceHalHidlImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;BBB[B)Z
    .registers 10

    .line 2295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "updateCellularCapabilities"

    .line 2297
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 2298
    monitor-exit v0

    return v1

    .line 2299
    :cond_e
    array-length v2, p5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    return v1

    :cond_14
    :try_start_14
    const-string v2, "SemSupplicantStaIfaceHalHidlImpl"

    const-string v3, "updateCellularCapabilities called"

    .line 2301
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->updateCellularCapabilities(BBB[B)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    const-string p2, "updateCellularCapabilities"

    .line 2303
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->checkSehStatusAndLogFailure(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)Z

    move-result p0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_27
    .catchall {:try_start_14 .. :try_end_25} :catchall_2f

    :try_start_25
    monitor-exit v0

    return p0

    :catch_27
    move-exception p1

    const-string p2, "updateCellularCapabilities"

    .line 2305
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2306
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    .line 2308
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_2f

    throw p0
.end method
