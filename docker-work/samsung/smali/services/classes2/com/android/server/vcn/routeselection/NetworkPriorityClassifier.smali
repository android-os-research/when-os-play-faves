.class public Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;
.super Ljava/lang/Object;
.source "NetworkPriorityClassifier.java"


# static fields
.field public static final PRIORITY_ANY:I = 0x7fffffff
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NetworkPriorityClassifier"

.field public static final WIFI_ENTRY_RSSI_THRESHOLD_DEFAULT:I = -0x46
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final WIFI_EXIT_RSSI_THRESHOLD_DEFAULT:I = -0x4a
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePriorityClass(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")I"
        }
    .end annotation

    move-object v7, p1

    .line 87
    iget-boolean v0, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    const v8, 0x7fffffff

    if-eqz v0, :cond_1f

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network blocked for System Server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    return v8

    :cond_1f
    if-nez p4, :cond_27

    const-string v0, "Got null snapshot"

    .line 93
    invoke-static {v0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    return v8

    :cond_27
    const/4 v0, 0x0

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 99
    invoke-static/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v10

    :cond_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_4c
    return v8
.end method

.method public static checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 232
    iget-object p2, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 239
    :cond_a
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    if-nez v1, :cond_18

    const-string p0, "Got null NetworkSpecifier"

    .line 241
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    return v0

    .line 245
    :cond_18
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/telephony/TelephonyManager;

    .line 249
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 250
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 252
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 253
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v0

    .line 259
    :cond_45
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 260
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSpecificCarrierId()I

    move-result p0

    .line 261
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    return v0

    .line 266
    :cond_62
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getRoaming()I

    move-result p0

    const/16 v1, 0x12

    .line 267
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne p0, v2, :cond_72

    if-eqz v1, :cond_77

    :cond_72
    const/4 v3, 0x2

    if-ne p0, v3, :cond_78

    if-eqz v1, :cond_78

    :cond_77
    return v0

    .line 273
    :cond_78
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOpportunistic()I

    move-result p0

    .line 274
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result p1

    if-ne p0, v2, :cond_ae

    if-nez p1, :cond_89

    return v0

    .line 290
    :cond_89
    invoke-virtual {p4, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object p0

    .line 291
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 292
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p0

    .line 293
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    return v0

    :cond_ae
    if-ne p0, v3, :cond_b3

    if-nez p1, :cond_b3

    return v0

    :cond_b3
    return v2
.end method

.method public static checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 123
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_12

    .line 124
    iget-object v3, p5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v4, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 126
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 128
    :goto_13
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMetered()I

    move-result v4

    const/16 v5, 0xb

    .line 129
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/2addr v5, v1

    if-ne v4, v1, :cond_22

    if-eqz v5, :cond_27

    :cond_22
    const/4 v6, 0x2

    if-ne v4, v6, :cond_28

    if-eqz v5, :cond_28

    :cond_27
    return v2

    .line 137
    :cond_28
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v4

    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitUpstreamBandwidthKbps()I

    move-result v5

    if-lt v4, v5, :cond_96

    .line 138
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v4

    .line 139
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryUpstreamBandwidthKbps()I

    move-result v5

    if-ge v4, v5, :cond_3f

    if-nez v3, :cond_3f

    goto :goto_96

    .line 144
    :cond_3f
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v4

    .line 145
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitDownstreamBandwidthKbps()I

    move-result v5

    if-lt v4, v5, :cond_96

    .line 146
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v4

    .line 147
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryDownstreamBandwidthKbps()I

    move-result v5

    if-ge v4, v5, :cond_56

    if-nez v3, :cond_56

    goto :goto_96

    .line 152
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v3

    if-eqz v3, :cond_64

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_64

    return v1

    .line 156
    :cond_64
    instance-of v0, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    if-eqz v0, :cond_6f

    .line 157
    check-cast p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    invoke-static {p1, p2, p5, p6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result p0

    return p0

    .line 164
    :cond_6f
    instance-of p5, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-eqz p5, :cond_7a

    .line 165
    check-cast p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result p0

    return p0

    .line 173
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got unknown VcnUnderlyingNetworkTemplate class: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    :cond_96
    :goto_96
    return v2
.end method

.method public static checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 185
    iget-object v0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    .line 187
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    return v3

    .line 192
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->isWifiRssiAcceptable(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result p1

    if-nez p1, :cond_12

    return v3

    .line 196
    :cond_12
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 197
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    return v3

    :cond_2b
    return v1
.end method

.method public static getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 3

    const/16 v0, -0x46

    if-eqz p0, :cond_c

    const-string/jumbo v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    .line 319
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method public static getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 3

    const/16 v0, -0x4a

    if-eqz p0, :cond_c

    const-string/jumbo v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    .line 328
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method public static isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "Got null snapshot"

    .line 306
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    return v0

    .line 309
    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->isOpportunistic(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_25
    return v0
.end method

.method public static isWifiRssiAcceptable(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_12

    .line 209
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 211
    invoke-virtual {p0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v2

    goto :goto_13

    :cond_12
    move p0, v1

    :goto_13
    if-eqz p0, :cond_20

    .line 214
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result p0

    invoke-static {p2}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p1

    if-lt p0, p1, :cond_20

    return v2

    .line 218
    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result p0

    invoke-static {p2}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p1

    if-lt p0, p1, :cond_2b

    return v2

    :cond_2b
    return v1
.end method

.method public static logWtf(Ljava/lang/String;)V
    .registers 4

    .line 336
    sget-object v0, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
