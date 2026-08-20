.class public Landroid/net/ipmemorystore/NetworkAttributes;
.super Ljava/lang/Object;
.source "NetworkAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NULL_MATCH_WEIGHT:F = 0.25f

.field public static final TOTAL_WEIGHT:F = 850.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TOTAL_WEIGHT_CUTOFF:F = 520.0f

.field private static final WEIGHT_ASSIGNEDV4ADDR:F = 300.0f

.field private static final WEIGHT_ASSIGNEDV4ADDREXPIRY:F = 0.0f

.field private static final WEIGHT_CLUSTER:F = 300.0f

.field private static final WEIGHT_DNSADDRESSES:F = 200.0f

.field private static final WEIGHT_MTU:F = 50.0f

.field private static final WEIGHT_V6PROVLOSSQUIRK:F


# instance fields
.field public final assignedV4Address:Ljava/net/Inet4Address;

.field public final assignedV4AddressExpiry:Ljava/lang/Long;

.field public final cluster:Ljava/lang/String;

.field public final dnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

.field public final mtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 131
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    invoke-static {v0}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    .line 132
    iget-wide v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-lez v3, :cond_18

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    goto :goto_19

    :cond_18
    move-object v3, v4

    :goto_19
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 135
    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;

    move-result-object v5

    .line 136
    iget v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    if-ltz v1, :cond_2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_2c

    :cond_2b
    move-object v6, v4

    :goto_2c
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 137
    invoke-static {p1}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    move-result-object v7

    move-object v1, p0

    move-object v4, v0

    .line 131
    invoke-direct/range {v1 .. v7}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_14

    .line 114
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MTU can\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    if-eqz p2, :cond_2a

    .line 115
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    goto :goto_2a

    .line 116
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lease expiry can\'t be negative or zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_2a
    :goto_2a
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 119
    iput-object p2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 120
    iput-object p3, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-nez p4, :cond_34

    const/4 p1, 0x0

    goto :goto_3d

    .line 122
    :cond_34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_3d
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 123
    iput-object p5, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 124
    iput-object p6, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-void
.end method

.method private static blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/ipmemorystore/Blob;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 156
    iget-object v3, v3, Landroid/net/ipmemorystore/Blob;->data:[B

    invoke-static {v3}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 157
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method private static getByAddressOrNull([B)Ljava/net/InetAddress;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 145
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method private static inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Landroid/net/ipmemorystore/Blob;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 166
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 167
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    if-nez v3, :cond_1a

    goto :goto_28

    .line 169
    :cond_1a
    new-instance v4, Landroid/net/ipmemorystore/Blob;

    invoke-direct {v4}, Landroid/net/ipmemorystore/Blob;-><init>()V

    .line 170
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v4, Landroid/net/ipmemorystore/Blob;->data:[B

    .line 171
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2b
    new-array p0, v1, [Landroid/net/ipmemorystore/Blob;

    .line 173
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/ipmemorystore/Blob;

    return-object p0
.end method

.method private samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F
    .registers 4

    const/4 p0, 0x0

    if-nez p2, :cond_9

    if-nez p3, :cond_8

    const/high16 p0, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    :cond_8
    return p0

    .line 197
    :cond_9
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_11

    :cond_10
    move p1, p0

    :goto_11
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 350
    instance-of v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 351
    :cond_6
    check-cast p1, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 352
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 353
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 354
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 355
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 356
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 357
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    const/4 v1, 0x1

    :cond_45
    return v1
.end method

.method public getNetworkGroupSamenessConfidence(Landroid/net/ipmemorystore/NetworkAttributes;)F
    .registers 7

    .line 203
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/high16 v2, 0x43960000    # 300.0f

    .line 204
    invoke-direct {p0, v2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0, v4, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 207
    invoke-direct {p0, v2, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const/high16 v3, 0x43480000    # 200.0f

    .line 208
    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    const/high16 v3, 0x42480000    # 50.0f

    .line 209
    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 210
    invoke-direct {p0, v4, v1, p1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x44020000    # 520.0f

    cmpg-float p1, v0, p0

    if-gez p1, :cond_46

    const/high16 p0, 0x44820000    # 1040.0f

    div-float/2addr v0, p0

    return v0

    :cond_46
    sub-float/2addr v0, p0

    const/high16 p0, 0x43a50000    # 330.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v0, :cond_1a

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .registers 6

    .line 179
    new-instance v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    .line 181
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    :goto_10
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    .line 183
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v1, :cond_19

    const-wide/16 v3, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1d
    iput-wide v3, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 184
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;

    move-result-object v1

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 186
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v1, :cond_31

    const/4 v1, -0x1

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_35
    iput v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 187
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-nez p0, :cond_3c

    goto :goto_40

    .line 188
    :cond_3c
    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    move-result-object v2

    :goto_40
    iput-object v2, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 369
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-eqz v2, :cond_25

    const-string v2, "assignedV4Addr :"

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 374
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2a

    :cond_25
    const-string v2, "assignedV4Addr"

    .line 376
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_2a
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-eqz v2, :cond_3d

    const-string v2, "assignedV4AddressExpiry :"

    .line 380
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 381
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_42

    :cond_3d
    const-string v2, "assignedV4AddressExpiry"

    .line 383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_42
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-eqz v2, :cond_51

    const-string v2, "cluster :"

    .line 387
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 388
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_56

    :cond_51
    const-string v2, "cluster"

    .line 390
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :goto_56
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const-string v3, "]"

    if-eqz v2, :cond_7f

    const-string v2, "dnsAddr : ["

    .line 394
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 395
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 396
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_67

    .line 398
    :cond_7b
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_84

    :cond_7f
    const-string v2, "dnsAddr"

    .line 400
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_84
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-eqz v2, :cond_98

    const-string/jumbo v2, "mtu :"

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 405
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9e

    :cond_98
    const-string/jumbo v2, "mtu"

    .line 407
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :goto_9e
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-eqz v2, :cond_b5

    const-string/jumbo v2, "ipv6ProvisioningLossQuirk : ["

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 412
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 413
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_bb

    :cond_b5
    const-string/jumbo p0, "ipv6ProvisioningLossQuirk"

    .line 415
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_bb
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_dd

    const-string p0, "; Null fields : ["

    .line 419
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 420
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ca
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_ca

    .line 423
    :cond_da
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 426
    :cond_dd
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
