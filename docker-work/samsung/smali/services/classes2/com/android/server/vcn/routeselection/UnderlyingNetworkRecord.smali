.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
.super Ljava/lang/Object;
.source "UnderlyingNetworkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    }
.end annotation


# static fields
.field public static final PRIORITY_CLASS_INVALID:I = 0x7fffffff


# instance fields
.field public final isBlocked:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field public mPriorityClass:I

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public static synthetic $r8$lambda$5FNNUjngY5ZLKel0p59PtDJdMKc(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)I
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->lambda$getComparator$0(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 52
    iput v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    .line 60
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 61
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 62
    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 63
    iput-boolean p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    return-void
.end method

.method public static getComparator(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Ljava/util/Comparator;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    return-object v7
.end method

.method public static isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 157
    :cond_4
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    return v0
.end method

.method public static synthetic lambda$getComparator$0(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)I
    .registers 16

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v0

    move-object v1, p7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 128
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p0

    if-ne v0, p0, :cond_28

    .line 141
    invoke-static {p6, p4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p0, -0x1

    return p0

    .line 144
    :cond_20
    invoke-static {p6, p4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p0, 0x1

    return p0

    .line 148
    :cond_28
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Lcom/android/server/vcn/VcnContext;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")V"
        }
    .end annotation

    const-string v0, "UnderlyingNetworkRecord:"

    .line 172
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p1

    .line 184
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Priority index: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetwork: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkCapabilities: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLinkProperties: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    check-cast p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 100
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 101
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 102
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    iget-boolean p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    if-ne p0, p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    return v0
.end method

.method public final getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
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

    .line 74
    iget v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_14

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->calculatePriorityClass(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    .line 86
    :cond_14
    iget p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    return p0
.end method

.method public getPriorityClass()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
