.class public Landroid/net/ipmemorystore/NetworkAttributes$Builder;
.super Ljava/lang/Object;
.source "NetworkAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/NetworkAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAssignedAddress:Ljava/net/Inet4Address;

.field private mAssignedAddressExpiry:Ljava/lang/Long;

.field private mCluster:Ljava/lang/String;

.field private mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

.field private mMtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributes;)V
    .registers 4

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 250
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 251
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 253
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 254
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ipmemorystore/NetworkAttributes;
    .registers 9

    .line 336
    new-instance v7, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    iget-object v3, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v5, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    iget-object v6, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V

    return-object v7
.end method

.method public setAssignedV4Address(Ljava/net/Inet4Address;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 2

    .line 263
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    return-object p0
.end method

.method public setAssignedV4AddressExpiry(Ljava/lang/Long;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 6

    if-eqz p1, :cond_16

    .line 276
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    goto :goto_16

    .line 277
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lease expiry can\'t be negative or zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_16
    :goto_16
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 2

    .line 289
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    return-object p0
.end method

.method public setDnsAddresses(Ljava/util/List;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/net/ipmemorystore/NetworkAttributes$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    if-eqz v1, :cond_15

    goto :goto_6

    .line 303
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null DNS address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_1d
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setIpv6ProvLossQuirk(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 2

    .line 327
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-object p0
.end method

.method public setMtu(Ljava/lang/Integer;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .registers 3

    if-eqz p1, :cond_11

    .line 316
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MTU can\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    return-object p0
.end method
