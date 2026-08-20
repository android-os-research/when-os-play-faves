.class public Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
.super Ljava/lang/Object;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelephonySubscriptionSnapshot"
.end annotation


# static fields
.field public static final EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;


# instance fields
.field public final mActiveDataSubId:I

.field public final mPrivilegedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
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

.field public final mSubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 375
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    const-string/jumbo p1, "subIdToInfoMap was null"

    .line 389
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p1, "privilegedPackages was null"

    .line 390
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p1, "subIdToCarrierConfigMap was null"

    .line 391
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 394
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 396
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 397
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelUuid;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    .line 398
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 401
    :cond_50
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "TelephonySubscriptionSnapshot:"

    .line 518
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveDataSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubIdToInfoMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubIdToCarrierConfigMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrivilegedPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 504
    instance-of v0, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 508
    :cond_6
    check-cast p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 510
    iget v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    iget v2, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    if-ne v0, v2, :cond_2d

    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 511
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 512
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    .line 513
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public getActiveDataSubscriptionGroup()Landroid/os/ParcelUuid;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_14
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method

.method public getActiveDataSubscriptionId()I
    .registers 1

    .line 406
    iget p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    return p0
.end method

.method public getActiveSubscriptionGroups()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 449
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_35
    return-object v0
.end method

.method public getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .registers 6

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    if-eqz v2, :cond_9

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->isOpportunistic(I)Z

    move-result v0

    if-nez v0, :cond_2e

    return-object v2

    :cond_2e
    move-object v0, v2

    goto :goto_9

    :cond_30
    return-object v0
.end method

.method public getGroupForSubId(I)Landroid/os/ParcelUuid;
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 438
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 495
    iget v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 495
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isOpportunistic(I)Z
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 462
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .registers 3

    .line 429
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_12

    .line 431
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonySubscriptionSnapshot{ mActiveDataSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubIdToInfoMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubIdToCarrierConfigMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrivilegedPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mPrivilegedPackages:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
