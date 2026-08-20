.class public Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.super Ljava/lang/Object;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;,
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;
    }
.end annotation


# static fields
.field public static final A03S_SAR_MANAGER:Ljava/lang/String; = "A03sSarManager"

.field public static final ACTION_HEAD_SAR_INTENT:Ljava/lang/String; = "android.samsung.media.action.receiver_sar"

.field public static final BODY_HEAD_ALL_ANT:I = 0x3

.field public static final BODY_HEAD_DISABLE_ANT:I = -0x1

.field public static final BODY_HEAD_WIFI_ANT:I = 0x1

.field public static final BODY_HEAD_WIFI_LTE_ANT:I = 0x2

.field public static final BODY_SAR_BACKOFF_DISABLED:I = 0x1

.field public static final BODY_SAR_BACKOFF_ENABLED:I = 0x2

.field private static final DBG:Z

.field public static final DOUBLE_BODY_SAR_MANAGER:Ljava/lang/String; = "DoubleBodySarManager"

.field public static final EXTRA_RCV_ON:Ljava/lang/String; = "android.samsung.media.extra.receiver"

.field public static final GTA4XL_SAR_MANAGER:Ljava/lang/String; = "Gta4XLSarManager"

.field public static final HEADSET_PLUGGED:I = 0x1

.field public static final HEADSET_UNPLUGGED:I = 0x0

.field public static final HEAD_SAR_BACKOFF_DISABLED:I = -0x1

.field public static final HEAD_SAR_BACKOFF_ENABLED:I = 0x0

.field public static final JDM_PROXIMITY_HEAD_SAR_MANAGER:Ljava/lang/String; = "JdmProximityHeadSarManager"

.field public static final JDM_RECEIVER_HEAD_SAR_MANAGER:Ljava/lang/String; = "JdmReceiverHeadSarManager"

.field public static final JDM_TRIPLE_BODY_SAR_MANAGER:Ljava/lang/String; = "JdmTripleBodySarManager"

.field public static final NR_MMWAVE_SAR_BACKOFF_DISABLED:I = 0x3

.field public static final NR_MMWAVE_SAR_BACKOFF_ENABLED:I = 0x4

.field public static final NR_SUB6_SAR_BACKOFF_DISABLED:I = 0x5

.field public static final NR_SUB6_SAR_BACKOFF_ENABLED:I = 0x6

.field public static final PROXIMITY_HEAD_SAR_MANAGER:Ljava/lang/String; = "ProximityHeadSarManager"

.field public static final RECEIVER_HEAD_SAR_MANAGER:Ljava/lang/String; = "ReceiverHeadSarManager"

.field public static final RF_TEST_MODE:I = 0x2

.field public static final RF_TEST_MODE_WITH_PROXIMITY:I = 0x1

.field public static final RF_USER_MODE:I = 0x0

.field public static final SAR_BACKOFF_DISABLE_ALL:I = 0x7

.field public static final SENSOR_MODE_NORMAL:I = 0x5

.field public static final SENSOR_MODE_UNKNOWN:I = 0x4

.field public static final SENSOR_STATE_BOOTING:I = 0x1

.field public static final SENSOR_STATE_NORMAL:I = 0x3

.field public static final SENSOR_STATE_UNKNOWN_BACKOFF:I = 0x2

.field public static final SINGLE_BODY_SAR_MANAGER:Ljava/lang/String; = "SingleBodySarManager"

.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Sar"

.field public static final TRIPLE_BODY_SAR_MANAGER:Ljava/lang/String; = "TripleBodySarManager"


# instance fields
.field private final BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

.field private final BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

.field private final BODY_SAR_SUPPORT:Z

.field private final BODY_SAR_SUPPORT_FOR_A03S:Z

.field private final BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

.field private final HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

.field private final HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

.field private final HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

.field private final mActiveInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

.field private mIsJdmModel:Z

.field private mIsRfTestMode:Z

.field private mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

.field private final mLock:Ljava/lang/Object;

.field final mSarManagerList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;


# direct methods
.method static bridge synthetic -$$Nest$fgetBODY_SAR_SEPARATE_ANT_TYPE(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetHEAD_SAR_SUPPORT_BY_PROXIMITY(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveInterfaces(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBackOffMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsRfTestMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsRfTestMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRfMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->checkRfMode(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 5

    .line 114
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    const-string p2, "sensor"

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 125
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    .line 126
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 127
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportedHeadSar(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    const/4 p2, 0x1

    .line 131
    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportedHeadSar(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    .line 133
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getBodySarType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4d

    const-string v0, ""

    .line 137
    :cond_4d
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 138
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getSingleAntennaType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    .line 139
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getSeparateAntennaType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    .line 140
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportGta4XL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

    .line 141
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportA03S()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A03S:Z

    const-string v3, "GRIP"

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_7b
    move p1, p2

    :cond_7c
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    .line 145
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isJdmModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsJdmModel:Z

    .line 146
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->checkRfMode(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsRfTestMode:Z

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->checkAndAddSarManager()V

    return-void
.end method

.method private checkAndAddSarManager()V
    .registers 8

    .line 152
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V

    .line 154
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsJdmModel:Z

    const v2, 0x10027

    const-string v3, "GRIPIII"

    const-string v4, "SingleBodySarManager"

    const/4 v5, 0x0

    if-eqz v1, :cond_6b

    .line 155
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    if-eqz v1, :cond_22

    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v6, "JdmProximityHeadSarManager"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v1

    .line 158
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_22
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    if-eqz v1, :cond_33

    .line 161
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v6, "JdmReceiverHeadSarManager"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v1

    .line 163
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_33
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    if-eqz v1, :cond_6a

    .line 167
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 168
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v2, "JdmTripleBodySarManager"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 171
    :cond_4d
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A03S:Z

    if-eqz v1, :cond_5f

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v2, "A03sSarManager"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 176
    :cond_5f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    return-void

    .line 184
    :cond_6b
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    if-eqz v1, :cond_7c

    .line 185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v6, "ProximityHeadSarManager"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v1

    .line 187
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_7c
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    if-eqz v1, :cond_8d

    .line 190
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v6, "ReceiverHeadSarManager"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v1

    .line 192
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_8d
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    if-eqz v1, :cond_126

    .line 196
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 198
    aget-object v2, v1, v5

    const-string v3, "0x"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    .line 199
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    .line 203
    :cond_c4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 204
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v2, "TripleBodySarManager"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    .line 207
    :cond_da
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    const-string v3, "GRIPI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 208
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const v2, 0x10018

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    .line 211
    :cond_f3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

    if-eqz v1, :cond_105

    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v2, "Gta4XLSarManager"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    .line 215
    :cond_105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    const-string v2, "DoubleBodySarManager"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    .line 220
    :cond_11b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    move-result-object v0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_126
    :goto_126
    return-void
.end method

.method private checkRfMode(Z)Z
    .registers 7

    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi_new_rf_test_mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_5d

    if-ne v0, v1, :cond_5d

    const-string p1, "SemWifiBackOff.Sar"

    const-string v2, "startProximitySensor by checkRfMode"

    .line 297
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 299
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ProximityHeadSarManager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 300
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ReceiverHeadSarManager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 301
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JdmProximityHeadSarManager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 302
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JdmReceiverHeadSarManager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 303
    :cond_59
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndTriggerBackoffRoutine(Z)V

    goto :goto_1d

    :cond_5d
    if-eqz v0, :cond_60

    move v3, v1

    :cond_60
    return v3
.end method

.method private setClientWifiState(I)V
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientWifiState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;->broadcastWifiState(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Dump of SemSarManager"

    .line 288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mIsRfTestMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsRfTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mCurrentBackOffMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentSarBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    return-object p0
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 248
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseBodySarManager;->isGripSensorMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .registers 6

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGripSensorMonitorEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 240
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndSetListener(Z)V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi_sensor_monitor_enable"

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_35
    return-void
.end method

.method public setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    return-void
.end method

.method start(Ljava/lang/String;)V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    if-eqz v1, :cond_15

    const/4 p1, 0x3

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setClientWifiState(I)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 263
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method stop(Ljava/lang/String;)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    .line 276
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    if-nez p1, :cond_16

    .line 278
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setClientWifiState(I)V

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    .line 276
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public triggerBackoffRoutine(Z)V
    .registers 3

    .line 232
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 233
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndTriggerBackoffRoutine(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method
