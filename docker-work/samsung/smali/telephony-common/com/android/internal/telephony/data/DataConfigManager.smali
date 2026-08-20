.class public Lcom/android/internal/telephony/data/DataConfigManager;
.super Landroid/os/Handler;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    }
.end annotation


# static fields
.field public static final blacklist DATA_CONFIG_NETWORK_TYPE_LTE:Ljava/lang/String; = "LTE"

.field public static final blacklist DATA_CONFIG_NETWORK_TYPE_NR_NSA:Ljava/lang/String; = "NR_NSA"

.field public static final blacklist DATA_CONFIG_NETWORK_TYPE_NR_NSA_MMWAVE:Ljava/lang/String; = "NR_NSA_MMWAVE"


# instance fields
.field private final blacklist mBandwidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mDataHandoverRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSetupRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandoverRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNetworkCapabilityPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkConnectingTimeout:I

.field private blacklist mNetworkDisconnectingTimeout:I

.field private blacklist mNetworkHandoverTimeout:I

.field private blacklist mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mRoamingMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoamingUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private final blacklist mSingleDataNetworkTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTcpBufferSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3nAtIoiyyE91VZMsoqtVaXOZeuE(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$dump$5(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$91VTS79iztUpVcCQNL6YCsL2jkU(Ljava/lang/Integer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$getMeteredNetworkCapabilities$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$N_vBsEPKT2INNIXmCrPFYc77TiE(Lcom/android/internal/telephony/data/DataConfigManager;ZLjava/lang/Integer;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$isAnyMeteredCapability$2(ZLjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$UAV30vNScrOMJMgqfsNIE25XK_8(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$dump$4(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kClr9uXqQ4XjRGeMlt4ADiMlgHc(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$dump$3(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lnTpg-os8uuijMQd0N3oDlv2fDI(Lcom/android/internal/telephony/data/DataConfigManager;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataConfigManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .registers 7

    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 253
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    .line 260
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 262
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    .line 267
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    .line 270
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 273
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 276
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    const-string v1, "DataConfigManager created."

    .line 292
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 297
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataConfigManager$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataConfigManager$1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-virtual {v2, v3, v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 313
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    const-string v1, "telephony"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    .line 325
    invoke-virtual {p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public static blacklist getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .registers 3

    .line 901
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 902
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_26

    const/4 v1, 0x2

    if-eq p0, v1, :cond_26

    const/4 v1, 0x3

    if-eq p0, v1, :cond_23

    const/4 v1, 0x5

    if-eq p0, v1, :cond_19

    .line 916
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->networkTypeToDataConfigNetworkType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 p0, 0x14

    if-ne v0, p0, :cond_20

    const-string p0, "NR_SA_MMWAVE"

    return-object p0

    :cond_20
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    :cond_23
    const-string p0, "NR_NSA"

    return-object p0

    :cond_26
    const-string p0, "LTE_CA"

    return-object p0
.end method

.method private static synthetic blacklist lambda$dump$3(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$dump$4(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V
    .registers 4

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$dump$5(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getMeteredNetworkCapabilities$1(Ljava/lang/Integer;)Z
    .registers 1

    .line 539
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic blacklist lambda$isAnyMeteredCapability$2(ZLjava/lang/Integer;)Z
    .registers 3

    .line 573
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isMeteredCapability(IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 317
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string v0, "telephony"

    .line 316
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1165
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1173
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist networkTypeToDataConfigNetworkType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_42

    const-string p0, ""

    return-object p0

    :pswitch_6
    const-string p0, "NR_SA"

    return-object p0

    :pswitch_9
    const-string p0, "LTE_CA"

    return-object p0

    :pswitch_c
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_f
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_12
    const-string p0, "GSM"

    return-object p0

    :pswitch_15
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_18
    const-string p0, "eHRPD"

    return-object p0

    :pswitch_1b
    const-string p0, "LTE"

    return-object p0

    :pswitch_1e
    const-string p0, "EvDo_B"

    return-object p0

    :pswitch_21
    const-string p0, "iDEN"

    return-object p0

    :pswitch_24
    const-string p0, "HSPA"

    return-object p0

    :pswitch_27
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_2a
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_2d
    const-string p0, "1xRTT"

    return-object p0

    :pswitch_30
    const-string p0, "EvDo_A"

    return-object p0

    :pswitch_33
    const-string p0, "EvDo_0"

    return-object p0

    :pswitch_36
    const-string p0, "CDMA"

    return-object p0

    :pswitch_39
    const-string p0, "UMTS"

    return-object p0

    :pswitch_3c
    const-string p0, "EDGE"

    return-object p0

    :pswitch_3f
    const-string p0, "GPRS"

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist updateBandwidths()V
    .registers 11

    .line 654
    monitor-enter p0

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "bandwidth_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_b7

    .line 661
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_b7

    aget-object v5, v0, v4

    const-string v6, ":"

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 665
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3e

    .line 666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid bandwidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_b3

    :cond_3e
    const/4 v5, 0x1

    .line 671
    aget-object v7, v6, v5

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 672
    array-length v9, v7

    if-eq v9, v8, :cond_63

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid bandwidth values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_b9

    goto :goto_b3

    .line 678
    :cond_63
    :try_start_63
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 679
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6f} :catch_94
    .catchall {:try_start_63 .. :try_end_6f} :catchall_b9

    if-eqz v1, :cond_87

    .line 685
    :try_start_71
    aget-object v7, v6, v3

    const-string v9, "NR"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 688
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    const-string v7, "LTE"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v5, v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 691
    :cond_87
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    aget-object v6, v6, v3

    new-instance v9, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v9, v8, v5}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    :catch_94
    move-exception v5

    .line 681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception parsing bandwidth values for network type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 695
    :cond_b7
    monitor-exit p0

    return-void

    :catchall_b9
    move-exception v0

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_71 .. :try_end_bb} :catchall_b9

    throw v0
.end method

.method private blacklist updateCarrierConfig()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_10

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 387
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v0, :cond_1a

    .line 388
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 390
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 391
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 390
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateNetworkCapabilityPriority()V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDataRetryRules()V

    .line 395
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateMeteredApnTypes()V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateSingleDataNetworkTypeList()V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateUnmeteredNetworkTypes()V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateBandwidths()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateTcpBuffers()V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateHandoverRules()V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data config updated. Config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, ""

    goto :goto_59

    :cond_57
    const-string v1, "not "

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateDataRetryRules()V
    .registers 8

    .line 453
    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_data_setup_retry_rules_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 458
    array-length v2, v0

    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_3e

    aget-object v4, v0, v3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_7b

    .line 460
    :try_start_17
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_21} :catch_22
    .catchall {:try_start_17 .. :try_end_21} :catchall_7b

    goto :goto_3b

    :catch_22
    move-exception v4

    .line 462
    :try_start_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataRetryRules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 467
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "telephony_data_handover_retry_rules_string_array"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 471
    array-length v2, v0

    :goto_4e
    if-ge v1, v2, :cond_79

    aget-object v3, v0, v1
    :try_end_52
    .catchall {:try_start_23 .. :try_end_52} :catchall_7b

    .line 473
    :try_start_52
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_5c} :catch_5d
    .catchall {:try_start_52 .. :try_end_5c} :catchall_7b

    goto :goto_76

    :catch_5d
    move-exception v3

    .line 475
    :try_start_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataRetryRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 479
    :cond_79
    monitor-exit p0

    return-void

    :catchall_7b
    move-exception v0

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_5e .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method private blacklist updateDeviceConfig()V
    .registers 7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "telephony"

    .line 349
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const-string v1, "anomaly_ims_release_request"

    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/16 v5, 0xc

    .line 351
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    const-string v1, "anomaly_network_unwanted"

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    const-string v1, "anomaly_setup_data_call_failure"

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 359
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    const-string v1, "anomaly_network_connecting_timeout"

    const v2, 0x493e0

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    const-string v1, "anomaly_network_disconnecting_timeout"

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    const-string v1, "anomaly_network_handover_timeout"

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    return-void
.end method

.method private blacklist updateHandoverRules()V
    .registers 7

    .line 922
    monitor-enter p0

    .line 923
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "iwlan_handover_policy_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 927
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_3f

    .line 929
    :try_start_16
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_20} :catch_21
    .catchall {:try_start_16 .. :try_end_20} :catchall_3f

    goto :goto_3a

    :catch_21
    move-exception v3

    .line 931
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHandoverRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 935
    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method private blacklist updateMeteredApnTypes()V
    .registers 4

    .line 508
    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 513
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 514
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 515
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 517
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_roaming_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 521
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 522
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 523
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 525
    :cond_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_55

    throw v0
.end method

.method private blacklist updateNetworkCapabilityPriority()V
    .registers 9

    .line 410
    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_network_capability_priorities_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 415
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_7c

    aget-object v4, v0, v3

    .line 416
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    .line 417
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 418
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_43

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_79

    .line 423
    :cond_43
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_65

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_79

    :cond_65
    const/4 v4, 0x1

    .line 429
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 430
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 433
    :cond_7c
    monitor-exit p0

    return-void

    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private blacklist updateSingleDataNetworkTypeList()V
    .registers 4

    .line 588
    monitor-enter p0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "only_single_dc_allowed_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_21

    .line 593
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    .line 594
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 596
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private blacklist updateTcpBuffers()V
    .registers 9

    .line 741
    monitor-enter p0

    .line 742
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10700f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 746
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_71

    aget-object v4, v0, v3

    const-string v5, ":"

    .line 749
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 750
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_37

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid TCP buffer sizes entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_6e

    :cond_37
    const/4 v4, 0x1

    .line 754
    aget-object v6, v5, v4

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_65

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid TCP buffer sizes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_6e

    .line 758
    :cond_65
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    aget-object v7, v5, v2

    aget-object v4, v5, v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 761
    :cond_71
    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v0
.end method

.method private blacklist updateUnmeteredNetworkTypes()V
    .registers 3

    .line 619
    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 626
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "roaming_unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 632
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1184
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isConfigCarrierSpecific="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Network capability priority:"

    .line 1188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1190
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1192
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1193
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p2, "Data setup retry rules:"

    .line 1194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1196
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1197
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isIwlanHandoverPolicyEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Data handover retry rules:"

    .line 1199
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1201
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSetupDataCallAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkUnwantedAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mImsReleaseRequestAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkConnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkDisconnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkHandoverTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1210
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1209
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1212
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Single data network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 1214
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 1217
    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Bandwidths:"

    .line 1218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1220
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1221
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldUseDataActivityForRrcDetection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldUseDataActivityForRrcDetection()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTempNotMeteredSupportedByCarrier="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldResetDataThrottlingWhenTacChanges="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data service package name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default MTU="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "TCP buffer sizes by RAT:"

    .line 1229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1231
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1232
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default TCP buffer sizes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImsDeregistrationDelay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldPersistIwlanDataNetworksWhenDataServiceRestarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1235
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bandwidth estimation source="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10402f2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isDelayTearDownImsEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isEnhancedIwlanHandoverCheckEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTetheringProfileDisabledForRoaming="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1241
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getAllowedInitialAttachApnTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "allowed_initial_attach_apn_types_string_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1122
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1123
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1124
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1127
    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalyNetworkConnectingTimeoutMs()I
    .registers 1

    .line 794
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkDisconnectingTimeoutMs()I
    .registers 1

    .line 802
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getBandwidthEstimateSource()I
    .registers 7

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_54

    goto :goto_38

    :sswitch_18
    const-string v1, "bandwidth_estimator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_38

    :cond_21
    move v5, v2

    goto :goto_38

    :sswitch_23
    const-string v1, "modem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_38

    :cond_2c
    move v5, v3

    goto :goto_38

    :sswitch_2e
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_38

    :cond_37
    move v5, v4

    :goto_38
    packed-switch v5, :pswitch_data_62

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth estimation source config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return v4

    :pswitch_50
    const/4 p0, 0x3

    return p0

    :pswitch_52
    return v3

    :pswitch_53
    return v2

    :sswitch_data_54
    .sparse-switch
        -0x488da597 -> :sswitch_2e
        0x633fb2a -> :sswitch_23
        0xc19d372 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method public blacklist getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;
    .registers 2

    .line 706
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 707
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 706
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    if-eqz p0, :cond_f

    return-object p0

    .line 711
    :cond_f
    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    return-object p0
.end method

.method public blacklist getDataHandoverRetryRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataServicePackageName()Ljava/lang/String;
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_service_wwan_package_override_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataSetupRetryRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryDelayMillis()[J
    .registers 2

    .line 1081
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_timers_long_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryShouldSkipArray()[Z
    .registers 2

    .line 1091
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_should_skip_bool_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultMtu()I
    .registers 2

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_mtu_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultPreferredApn()Ljava/lang/String;
    .registers 2

    .line 1100
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_preferred_apn_name_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultTcpConfigString()Ljava/lang/String;
    .registers 2

    .line 834
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10403a2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHandoverRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getImsDeregistrationDelay()J
    .registers 3

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getMeteredNetworkCapabilities(Z)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 536
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    goto :goto_7

    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 537
    :goto_7
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;-><init>()V

    .line 538
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;-><init>()V

    .line 539
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 540
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getNetworkCapabilityPriority(I)I
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNetworkHandoverTimeoutMs()I
    .registers 1

    .line 810
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    return p0
.end method

.method public blacklist getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNrAdvancedCapablePcoId()I
    .registers 2

    .line 1109
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "nr_advanced_capable_pco_id_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getRetrySetupAfterDisconnectMillis()J
    .registers 3

    .line 1017
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_call_apn_retry_after_disconnect_long"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .registers 3

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 330
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_3a

    :cond_1f
    const-string p1, "EVENT_DEVICE_CONFIG_CHANGED"

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_3a

    :cond_2d
    const-string p1, "EVENT_CARRIER_CONFIG_CHANGED"

    .line 332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 334
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :goto_3a
    return-void
.end method

.method public blacklist isAnyMeteredCapability([IZ)Z
    .registers 4

    .line 572
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;Z)V

    .line 573
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isConfigCarrierSpecific()Z
    .registers 2

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_config_applied_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataRoamingEnabledByDefault()Z
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEnhancedIwlanHandoverCheckEnabled()Z
    .registers 2

    .line 1138
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110152

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isImsDelayTearDownEnabled()Z
    .registers 2

    .line 869
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "delay_ims_tear_down_until_call_end_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isIwlanHandoverPolicyEnabled()Z
    .registers 2

    .line 860
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x111014f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isMeteredCapability(IZ)Z
    .registers 3

    .line 559
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkTypeUnmetered(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z
    .registers 3

    .line 644
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 646
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_17

    .line 647
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_17
    return p0
.end method

.method public blacklist isTempNotMeteredSupportedByCarrier()Z
    .registers 2

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "network_temp_not_metered_supported_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTetheringProfileDisabledForRoaming()Z
    .registers 2

    .line 547
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "disable_dun_apn_while_roaming_with_preset_apn_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, ": "

    .line 977
    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    .line 978
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    return-object v1

    :cond_e
    const-string p2, ","

    .line 980
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 981
    array-length p3, p2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_32

    .line 982
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Format should be in \"time window in ms,occurrences\". Using default instead."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_32
    const/4 p1, 0x0

    .line 990
    :try_start_33
    aget-object p3, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3d} :catch_6c

    const/4 p1, 0x1

    .line 996
    :try_start_3e
    aget-object v2, p2, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_48} :catch_4e

    .line 1001
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {p1, p3, p4, p0}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    return-object p1

    :catch_4e
    move-exception p3

    .line 998
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow occurrence as integer "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :catch_6c
    move-exception p3

    .line 992
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow window span "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist registerForConfigUpdate(Landroid/os/Handler;I)V
    .registers 4

    .line 1149
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z
    .registers 2

    .line 851
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110212

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldResetDataThrottlingWhenTacChanges()Z
    .registers 2

    .line 718
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "unthrottle_data_retry_when_tac_changes_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldUseDataActivityForRrcDetection()Z
    .registers 2

    .line 580
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterForConfigUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 1157
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mConfigUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
