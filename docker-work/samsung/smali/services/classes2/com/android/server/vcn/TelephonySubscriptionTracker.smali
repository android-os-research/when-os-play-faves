.class public Lcom/android/server/vcn/TelephonySubscriptionTracker;
.super Landroid/content/BroadcastReceiver;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    }
.end annotation


# static fields
.field public static final LOG_DBG:Z = false

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

.field public final mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mCarrierPrivilegesCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public final mReadySubIdsBySlotId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubIdToCarrierConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$VI6Dr_cuRb_2GqBF1Uk-69p4Ik8(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->lambda$handleSubscriptionsChanged$0(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)V
    .registers 5

    .line 116
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    const-string v0, "Missing context"

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    const-string v0, "Missing handler"

    .line 126
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    const-string p2, "Missing callback"

    .line 127
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iput-object p3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    const-string p2, "Missing deps"

    .line 128
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 130
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 132
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 133
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener-IA;)V

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 135
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private synthetic lambda$handleSubscriptionsChanged$0(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    invoke-interface {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    return-void
.end method


# virtual methods
.method public getReadySubIdsBySlotId()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSubIdToCarrierConfigMap()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final handleActionCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v0, -0x1

    .line 316
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 317
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_10

    return-void

    .line 323
    :cond_10
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 324
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 326
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object p2, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 329
    invoke-static {v0, p2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 332
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-direct {v1, p2}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;-><init>(Landroid/os/PersistableBundle;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    goto :goto_61

    .line 337
    :cond_4b
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5e

    .line 339
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    :cond_61
    :goto_61
    return-void
.end method

.method public final handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 296
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->unregisterCarrierPrivilegesCallbacks()V

    .line 299
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    .line 300
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 301
    :cond_13
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 302
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_13

    .line 305
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 309
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    return-void
.end method

.method public handleSubscriptionsChanged()V
    .registers 7

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    .line 229
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 230
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_2a

    goto :goto_17

    .line 235
    :cond_2a
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 245
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 246
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 247
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 249
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    .line 250
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 251
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 252
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 258
    :cond_74
    new-instance v2, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 260
    invoke-virtual {v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->getActiveDataSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v2, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 267
    iput-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 268
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_95
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 291
    sget-object p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown intent received with action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 288
    :cond_32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_39

    .line 285
    :cond_36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_39
    return-void
.end method

.method public register()V
    .registers 6

    .line 150
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .registers 6

    .line 165
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2a

    .line 169
    :try_start_10
    new-instance v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 182
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2, v0, v3}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 184
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1f} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catch_22
    move-exception p0

    .line 187
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    const-string v1, "Encounted exception registering carrier privileges listeners"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    return-void
.end method

.method public setReadySubIdsBySlotId(Ljava/util/Map;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setSubIdToCarrierConfigMap(Ljava/util/Map;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public unregister()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->unregisterCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public final unregisterCarrierPrivilegesCallbacks()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 207
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    goto :goto_6

    .line 209
    :cond_18
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
