.class public Lcom/android/internal/telephony/data/TelephonyNetworkFactory;
.super Lcom/android/internal/telephony/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z = true

.field public static final blacklist EVENT_ACTIVE_PHONE_SWITCH:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist EVENT_SUBSCRIPTION_CHANGED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final blacklist LOG_TAG:Ljava/lang/String;

.field public final blacklist LOG_TAG_DDS:Ljava/lang/String;

.field private blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field public final blacklist mInternalHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingHandovers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private final blacklist mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private blacklist mSubscriptionId:I

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPendingHandovers(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPendingHandovers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monActivePhoneSwitch(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataHandoverNeeded(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onDataHandoverNeeded(IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataHandoverSetupCompleted(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/net/NetworkRequest;ZIZLcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onDataHandoverSetupCompleted(Landroid/net/NetworkRequest;ZIZLcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNeedNetworkFor(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReleaseNetworkFor(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSubIdChange(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onSubIdChange()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V
    .registers 9

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyNetworkFactory["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/android/internal/telephony/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 106
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPendingHandovers:Ljava/util/Map;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$1;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 126
    iput-object p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    .line 129
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 130
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 132
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    const/16 p1, 0x32

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactory;->setScoreFilter(I)V

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    .line 138
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result p1

    if-nez p1, :cond_95

    .line 141
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object p1

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->registerForHandoverNeededEvent(Landroid/os/Handler;I)V

    :cond_95
    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 146
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DDS-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkFactory;->register()V

    return-void
.end method

.method private static blacklist getAction(ZZ)I
    .registers 2

    if-nez p0, :cond_6

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I
    .registers 3

    .line 272
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result p1

    if-ltz p1, :cond_17

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    :cond_17
    return v0

    .line 282
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 281
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result p1

    .line 283
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result p0

    return p0
.end method

.method private blacklist makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .registers 3

    .line 165
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private blacklist onActivePhoneSwitch()V
    .registers 9

    const-string v0, "onActivePhoneSwitch"

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 345
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_31

    move v1, v4

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 347
    :goto_32
    iget-object v5, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v6, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 348
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    .line 347
    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v5

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivePhoneSwitch: applied: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", shouldApply: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    .line 353
    invoke-static {v1, v5}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getAction(ZZ)I

    move-result v1

    if-nez v1, :cond_61

    goto :goto_f

    .line 356
    :cond_61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivePhoneSwitch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v4, :cond_70

    const-string v7, "Requesting"

    goto :goto_72

    :cond_70
    const-string v7, "Releasing"

    .line 357
    :goto_72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " network request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v6

    if-ne v1, v4, :cond_93

    .line 361
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v1

    const/4 v7, 0x0

    .line 360
    invoke-direct {p0, v2, v4, v1, v7}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V

    goto :goto_a9

    :cond_93
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a9

    .line 363
    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 364
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_a9

    .line 367
    :cond_a2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v1

    .line 366
    invoke-direct {p0, v2, v4, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    .line 371
    :cond_a9
    :goto_a9
    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    if-eqz v5, :cond_ae

    move v3, v6

    .line 372
    :cond_ae
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 371
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_b7
    return-void
.end method

.method private blacklist onDataHandoverNeeded(IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V
    .registers 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataHandoverNeeded: apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static/range {p2 .. p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 517
    iget-object v0, v6, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result v0

    if-ne v0, v8, :cond_59

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APN type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static/range {p2 .. p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    return-void

    .line 524
    :cond_59
    iget-object v0, v6, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    :cond_65
    :goto_65
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_16e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_88

    move v2, v13

    goto :goto_89

    :cond_88
    move v2, v11

    .line 529
    :goto_89
    invoke-virtual {v14}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 528
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v3

    if-ne v3, v7, :cond_65

    if-eqz v2, :cond_65

    if-eq v1, v8, :cond_65

    .line 532
    iget-object v2, v6, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    if-eqz v2, :cond_14f

    .line 535
    invoke-static/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    const/4 v15, 0x0

    if-eqz v2, :cond_114

    .line 536
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 538
    iget-boolean v0, v9, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->isHandoverEnabled:Z

    if-eqz v0, :cond_100

    .line 540
    iget-object v0, v6, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 544
    invoke-virtual {v14}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v2

    const-string v3, "extra_network_request"

    .line 542
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    iget-object v1, v6, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPendingHandovers:Ljava/util/Map;

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 546
    invoke-direct {v6, v14, v1, v8, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested handover "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static/range {p2 .. p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    move v12, v13

    goto/16 :goto_65

    .line 555
    :cond_100
    invoke-virtual {v14}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->onDataHandoverSetupCompleted(Landroid/net/NetworkRequest;ZIZLcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V

    .line 558
    invoke-direct {v6, v14, v13, v8, v15}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V

    goto/16 :goto_65

    .line 564
    :cond_114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network request is on transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but no live data connection. Just move the request to transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static/range {p2 .. p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 570
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {v6, v14, v13, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    .line 573
    invoke-direct {v6, v14, v13, v8, v15}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V

    goto/16 :goto_65

    .line 577
    :cond_14f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcTracker on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_65

    :cond_16e
    if-nez v12, :cond_17a

    const-string v0, "No handover request pending. Handover process is now completed"

    .line 584
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 585
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->callback:Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;

    invoke-interface {v0, v13, v11}, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;->onCompleted(ZZ)V

    :cond_17a
    return-void
.end method

.method private blacklist onDataHandoverSetupCompleted(Landroid/net/NetworkRequest;ZIZLcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V
    .registers 8

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataHandoverSetupCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetTransport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {p3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 597
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    if-nez p4, :cond_57

    .line 602
    invoke-static {p3}, Lcom/android/internal/telephony/data/DataUtils;->getSourceTransport(I)I

    move-result p1

    if-eqz p2, :cond_41

    const/4 v1, 0x3

    goto :goto_42

    :cond_41
    const/4 v1, 0x2

    .line 615
    :goto_42
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    .line 622
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 624
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_57
    if-nez p2, :cond_5d

    const/4 p1, 0x1

    .line 630
    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    .line 635
    :cond_5d
    :goto_5d
    iget-object p0, p5, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->callback:Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;

    invoke-interface {p0, p2, p4}, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;->onCompleted(ZZ)V

    return-void
.end method

.method private blacklist onNeedNetworkFor(Landroid/os/Message;)V
    .registers 11

    .line 396
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    .line 398
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 399
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 398
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result p1

    .line 402
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    const-string v3, "ro.boot.hardware"

    const-string v4, ""

    .line 405
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "qcom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 406
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "mt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 407
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_ed

    const/16 v6, 0x40

    if-eq v1, v6, :cond_ed

    const/16 v6, 0x200

    if-eq v1, v6, :cond_ed

    .line 408
    iget-object v6, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-eq v6, v2, :cond_ad

    .line 411
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_6b

    move v2, v8

    goto :goto_6c

    :cond_6b
    move v2, v7

    :goto_6c
    if-nez v5, :cond_70

    if-eqz v2, :cond_84

    .line 413
    :cond_70
    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v3, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 414
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->needDdsChange(I)Z

    move-result v2

    if-nez v2, :cond_84

    if-eqz v5, :cond_ed

    const/16 v2, 0x11

    if-ne v1, v2, :cond_ed

    .line 416
    :cond_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNeedNetworkFor: preferredDataPhoneId isn\'t update. apnId : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wait onActivePhoneSwitch, needDdsChange : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 417
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->needDdsChange(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_ec

    :cond_ad
    if-nez v5, :cond_b1

    if-eqz v3, :cond_ed

    .line 422
    :cond_b1
    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_dds_progressing"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_c5

    move v1, v8

    goto :goto_c6

    :cond_c5
    move v1, v7

    .line 425
    :goto_c6
    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isNeedSyncDisconnect()Z

    move-result v2

    if-nez v1, :cond_d0

    if-eqz v2, :cond_ed

    .line 427
    :cond_d0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNeedNetworkFor: ddsProgressing : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needSyncDisconnect : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    :goto_ec
    move p1, v7

    .line 434
    :cond_ed
    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    if-eqz p1, :cond_f6

    .line 435
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v2

    goto :goto_f7

    :cond_f6
    const/4 v2, -0x1

    .line 434
    :goto_f7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-le v1, v8, :cond_12a

    if-eqz v5, :cond_12a

    const-string v1, "gsm.sim.state"

    .line 440
    invoke-static {v8, v1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 441
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_12a

    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 442
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_12b

    move v7, v8

    goto :goto_12b

    :cond_12a
    move v7, p1

    .line 450
    :cond_12b
    :goto_12b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNeedNetworkFor "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " shouldApply "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    if-eqz v7, :cond_151

    .line 454
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result p1

    const/4 v1, 0x0

    .line 453
    invoke-direct {p0, v0, v8, p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V

    :cond_151
    return-void
.end method

.method private blacklist onReleaseNetworkFor(Landroid/os/Message;)V
    .registers 6

    .line 466
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    .line 474
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1d

    move p1, v1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 478
    :goto_1e
    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseNetworkFor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " applied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    if-eqz p1, :cond_54

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 484
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_54

    .line 492
    :cond_4d
    invoke-direct {p0, v0, v1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    const/4 p1, 0x2

    .line 494
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V

    :cond_54
    :goto_54
    return-void
.end method

.method private blacklist onSubIdChange()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 380
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 381
    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    if-eq v1, v0, :cond_37

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubIdChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    .line 383
    iput v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    :cond_37
    return-void
.end method

.method private blacklist releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private blacklist releaseNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_27

    .line 323
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p0

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;I)V

    :cond_27
    :goto_27
    return-void
.end method

.method private blacklist requestNetworkInternal(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IILandroid/os/Message;)V
    .registers 7

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/NetworkRequestsStats;->addNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 302
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_30

    .line 304
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p0

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;)V

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 658
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetworkFactory-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Network Requests:"

    .line 662
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 664
    iget-object p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_51
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 665
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 666
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8a

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " applied on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_8a
    const-string v1, " not applied"

    :goto_8c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 670
    :cond_97
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Local logs:"

    .line 671
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 673
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 675
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 641
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 647
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 178
    new-instance p0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v1, 0x2

    .line 182
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v2, 0x3

    .line 183
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v3, 0x4

    .line 184
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v4, 0x5

    .line 185
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v5, 0x7

    .line 186
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v5, 0x8

    .line 187
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0x21

    .line 188
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0x9

    .line 189
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0x1d

    .line 190
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0xa

    .line 191
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0xd

    .line 192
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0x1c

    .line 193
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v6, 0xc

    .line 194
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v5, 0x1f

    .line 199
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v5, 0x17

    .line 201
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v5, 0x22

    .line 202
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v5, 0x23

    .line 203
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 207
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 208
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    new-instance v0, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 210
    invoke-virtual {v0, p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public blacklist needNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 391
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 461
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
