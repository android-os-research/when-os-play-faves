.class public final Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
.super Ljava/lang/Object;
.source "IPv6ProvisioningLossQuirk.java"


# instance fields
.field public final mDetectionCount:I

.field public final mQuirkExpiry:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 37
    iput-wide p2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    iget-wide v2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 62
    const-class v1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_c

    goto :goto_1d

    .line 63
    :cond_c
    check-cast p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 64
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    iget v2, p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    if-ne v1, v2, :cond_1d

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    iget-wide p0, p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;
    .registers 4

    .line 44
    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;-><init>()V

    .line 45
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    iput v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    .line 46
    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    iput-wide v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "detection count: "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", quirk expiry: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
