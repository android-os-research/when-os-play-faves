.class public Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.super Ljava/lang/Object;
.source "SemWifiCarrierInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;,
        Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
    }
.end annotation


# static fields
.field private static final CARRIER_MNO_TYPE:I = 0x0

.field private static final CARRIER_MVNO_TYPE:I = 0x1

.field private static final DBG_PRODUCT_DEV:Z

.field public static final TAG:Ljava/lang/String; = "SemWifiCarrierInfoManager"


# instance fields
.field private mActiveSlotCount:I

.field private mActiveSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVerboseLogEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$5qsSO9EoLw8MntIv-p3EF9kvyl4(ILandroid/telephony/SubscriptionInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->lambda$isSimReady$0(ILandroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MnRbuRvrO3cF_G29W06N-Dw2YrI(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubIdToSimInfoSparseArray(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionGroupMap(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/telephony/SubscriptionManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLogEnabled(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgivePrintableImsi(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->givePrintableImsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    .line 122
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 123
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 124
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mContext:Landroid/content/Context;

    .line 125
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;

    invoke-direct {p3, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener-IA;)V

    invoke-virtual {p2, p1, p3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private getActiveModemCount()I
    .registers 3

    .line 131
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    .line 134
    :cond_d
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    return p0
.end method

.method private getBestMatchSubscriptionIdForEnterprise(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4

    .line 192
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 193
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getMatchingSubId(I)I

    move-result p0

    return p0

    .line 196
    :cond_c
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_2f

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 197
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_2f

    .line 201
    :cond_19
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "carrierId is not assigned, using the default data sub."

    .line 203
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    return p1

    :cond_29
    const-string p1, "data sim is not present."

    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    return v1

    :cond_2f
    :goto_2f
    const-string p0, "SemWifiCarrierInfoManager"

    const-string p1, "The legacy config is not using EAP-SIM."

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
    .registers 7

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    if-eqz v0, :cond_15

    .line 356
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    .line 359
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v1, v2, :cond_25

    return-object v3

    .line 363
    :cond_25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_49

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_49

    .line 369
    :cond_36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierIdFromSimMccMnc()I

    move-result v3

    .line 370
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v0

    .line 371
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 372
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubIdToSimInfoSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4

    :cond_49
    :goto_49
    const-string p0, "SemWifiCarrierInfoManager"

    const-string p1, "Get invalid imsi when SIM is ready!"

    .line 366
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 381
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 383
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda1;-><init>()V

    .line 385
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 386
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 387
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mSubscriptionGroupMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static givePrintableImsi(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 96
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->DBG_PRODUCT_DEV:Z

    if-nez v0, :cond_a

    const-string p0, "[****]"

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :cond_a
    :goto_a
    return-object p0
.end method

.method private static synthetic lambda$isSimReady$0(ILandroid/telephony/SubscriptionInfo;)Z
    .registers 2

    .line 226
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private vlogd(Ljava/lang/String;)V
    .registers 2

    .line 284
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    const-string p0, "SemWifiCarrierInfoManager"

    .line 287
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "SemWifiCarrierInfoManager: "

    .line 416
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeSlotCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveModemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeSubscriptionInfoSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 420
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 421
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  slotIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", SIM Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isEsim(I)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "eSIM"

    goto :goto_6e

    :cond_6c
    const-string v2, "SIM"

    :goto_6e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CarrierName = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getCarrierNameForSubId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d

    .line 427
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " defaultDataSubscriptionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " defaultDataSimCarrierId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getDefaultDataSimCarrierId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isSimCardReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getNetworkType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 138
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mVerboseLogEnabled:Z

    return-void
.end method

.method public getActiveSubscriptionIdInGroup(Landroid/os/ParcelUuid;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 402
    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 403
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 404
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    move-result v3

    if-eqz v3, :cond_10

    if-ne v2, v1, :cond_29

    return v2

    :cond_29
    move v0, v2

    goto :goto_10

    :cond_2b
    return v0
.end method

.method public getBestMatchSubscriptionId(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_b

    const-string p0, "SemWifiCarrierInfoManager"

    const-string p1, "getBestMatchSubscriptionId: Config must be NonNull!"

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 152
    :cond_b
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    if-eq v1, v0, :cond_12

    .line 153
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    return p0

    .line 155
    :cond_12
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 156
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveSubscriptionIdInGroup(Landroid/os/ParcelUuid;)I

    move-result p0

    return p0

    .line 158
    :cond_21
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 159
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getMatchingSubId(I)I

    move-result p0

    return p0

    .line 161
    :cond_2e
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getBestMatchSubscriptionIdForEnterprise(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method

.method public getCarrierNameForSubId(I)Ljava/lang/String;
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 297
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDataSimCarrierId()I
    .registers 2

    .line 322
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 323
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 327
    :cond_c
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    return p0
.end method

.method public getMatchingImsiBySubId(I)Ljava/lang/String;
    .registers 4

    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimReady(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 274
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 276
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    return-object p0

    :cond_14
    const-string p1, "no active SIM card to match the carrier ID."

    .line 279
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    return-object v1
.end method

.method public getMatchingSubId(I)I
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_42

    .line 176
    :cond_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 179
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v4

    if-ne v4, p1, :cond_16

    .line 180
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, v0, :cond_16

    .line 187
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matching subId is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->vlogd(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return v1
.end method

.method public getNetworkType()I
    .registers 1

    .line 497
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method

.method public getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4

    if-eqz p1, :cond_34

    .line 236
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_34

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 237
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_34

    .line 240
    :cond_f
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-nez p0, :cond_33

    .line 243
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result p1

    if-eq p1, v1, :cond_32

    if-eq p1, v0, :cond_30

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2e

    const-string p1, "SemWifiCarrierInfoManager"

    const-string v0, "getSimMethodForConfig: Config is not SimMethod"

    .line 254
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_2e
    move p0, v0

    goto :goto_33

    :cond_30
    move p0, v1

    goto :goto_33

    :cond_32
    const/4 p0, 0x4

    :cond_33
    :goto_33
    return p0

    :cond_34
    :goto_34
    const/4 p0, -0x1

    return p0
.end method

.method public isCarrierNetworkFromNonDefaultDataSim(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 311
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 314
    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getBestMatchSubscriptionId(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    .line 315
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    if-eq p0, p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public isEsim(I)Z
    .registers 4

    .line 465
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    .line 466
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccCardInfo;

    .line 467
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 468
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public isSimCardReady()Z
    .registers 6

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_9

    return v1

    :cond_9
    move v0, v1

    .line 456
    :goto_a
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSlotCount:I

    if-ge v0, v3, :cond_1b

    .line 457
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_18

    return v2

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    return v1
.end method

.method public isSimReady(I)Z
    .registers 4

    .line 217
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2a

    .line 223
    :cond_13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getSimInfo(I)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    .line 226
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public isSubIdMatchingCarrierId(II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return v0

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_32

    .line 345
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 346
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_17

    .line 347
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result p0

    if-ne p0, p2, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v2
.end method
