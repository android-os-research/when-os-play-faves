.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;
    }
.end annotation


# static fields
.field protected static final blacklist CARRIER_EVENT_BASE:I = 0x64

.field protected static final blacklist CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final blacklist CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final blacklist CARRIER_EVENT_IMS_CAPABILITIES_CHANGED:I = 0x69

.field protected static final blacklist CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final blacklist CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field public static final blacklist EMERGENCY_NOTIFICATION_TAG:Ljava/lang/String; = "EmergencyNetworkNotification"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_EMERGENCY_NETWORK:I = 0x3e9

.field public static final blacklist NOTIFICATION_PREF_NETWORK:I = 0x3e8

.field public static final blacklist PREF_NETWORK_NOTIFICATION_TAG:Ljava/lang/String; = "PrefNetworkNotification"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private blacklist mAllowedNetworkType:J

.field private blacklist mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mNotificationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreviousSubId:I

.field private blacklist mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTypeMap(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSST(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/telephony/TelephonyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAllowedNetworkTypeChanged(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleAllowedNetworkTypeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleConfigChanges(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misGlobalMode(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneRegisteredForWifiCalling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhoneStillRegistered(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneStillRegistered()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterAllowedNetworkTypesListener(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerAllowedNetworkTypesListener()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    .line 357
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    .line 109
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerNotificationTypes()V

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x0

    .line 124
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide p1

    long-to-int p1, p1

    .line 123
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    .line 126
    new-instance p1, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerAllowedNetworkTypesListener()V

    return-void
.end method

.method private blacklist checkSupportedBitmask(JJ)Z
    .registers 5

    and-long p0, p3, p1

    cmp-long p0, p0, p3

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 6

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    const-string v1, "CSST"

    if-eqz v0, :cond_32

    .line 316
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting timer for notifications."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4d

    .line 320
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canceling notifications: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

.method private blacklist handleAllowedNetworkTypeChanged()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_13

    .line 302
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_13
    return-void
.end method

.method private blacklist handleConfigChanges()V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 295
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private blacklist handleImsCapabilitiesChanged()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_13

    .line 310
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_13
    return-void
.end method

.method private blacklist isCarrierConfigEnableNr(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "carrier_config"

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    const/4 v0, 0x0

    const-string v1, "CSST"

    if-nez p1, :cond_13

    const-string p0, "isCarrierConfigEnableNr: CarrierConfigManager is null"

    .line 274
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 277
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigEnableNr: Cannot get config "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3a
    const-string p0, "carrier_nr_availabilities_int_array"

    .line 282
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 284
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist isGlobalMode()Z
    .registers 5

    const/4 v0, 0x1

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 227
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_2f

    const/16 v2, 0xa

    .line 235
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isRafIncludeNetworkMode(II)Z

    move-result v3

    if-eqz v3, :cond_14

    return v0

    .line 240
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isNrSupported()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_26

    const/16 p0, 0x1b

    .line 242
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    if-ne v1, p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    return v0

    .line 245
    :cond_26
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    if-ne v1, p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    return v0

    :catch_2f
    const-string p0, "CSST"

    const-string v1, "Unable to get PREFERRED_NETWORK_MODE."

    .line 230
    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist isNrSupported()Z
    .registers 9

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 253
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 255
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isCarrierConfigEnableNr(Landroid/content/Context;)Z

    move-result v0

    .line 257
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    .line 256
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->checkSupportedBitmask(JJ)Z

    move-result v2

    const/4 v3, 0x2

    .line 259
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v6

    .line 258
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->checkSupportedBitmask(JJ)Z

    move-result p0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNrSupported:  carrierConfigEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", AccessFamilySupported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNrNetworkTypeAllowed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CSST"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5e

    if-eqz v2, :cond_5e

    if-eqz p0, :cond_5e

    const/4 p0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p0, 0x0

    :goto_5f
    return p0
.end method

.method private blacklist isPhoneRegisteredForWifiCalling()Z
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneRegisteredForWifiCalling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p0

    return p0
.end method

.method private blacklist isPhoneStillRegistered()Z
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 195
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 196
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private blacklist registerAllowedNetworkTypesListener()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterAllowedNetworkTypesListener()V

    .line 141
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1d

    .line 143
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_1d
    return-void
.end method

.method private blacklist registerNotificationTypes()V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist unregisterAllowedNetworkTypesListener()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 400
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationId()I

    move-result p1

    .line 399
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist dispose()V
    .registers 1

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterAllowedNetworkTypesListener()V

    return-void
.end method

.method public blacklist evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 330
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->sendMessage()Z

    move-result p0

    return p0
.end method

.method public blacklist getAllowedNetworkTypesChangedListener()Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    return-object p0
.end method

.method public blacklist getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getDelay()I

    move-result p0

    return p0
.end method

.method public blacklist getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "notification"

    .line 354
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public blacklist getNotificationTypeMap()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_16

    packed-switch v0, :pswitch_data_42

    goto :goto_41

    .line 178
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleImsCapabilitiesChanged()V

    goto :goto_41

    .line 175
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    goto :goto_41

    .line 182
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending notification after delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz p1, :cond_41

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_41
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x65
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist isRadioOffOrAirplaneMode()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 212
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_1f

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v3

    :cond_1e
    :goto_1e
    return v1

    :catch_1f
    const-string p0, "CSST"

    const-string v0, "Unable to get AIRPLACE_MODE_ON."

    .line 215
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 385
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    .line 386
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationTag()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationId()I

    move-result p1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 389
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
