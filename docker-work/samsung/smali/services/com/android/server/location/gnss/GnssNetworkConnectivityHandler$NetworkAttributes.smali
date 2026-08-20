.class public Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkAttributes"
.end annotation


# instance fields
.field public mApn:Ljava/lang/String;

.field public mCapabilities:Landroid/net/NetworkCapabilities;

.field public mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->getCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smhasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>()V

    return-void
.end method

.method public static getCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .registers 3

    const/16 v0, 0x12

    .line 178
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    int-to-short v0, v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/16 v1, 0xb

    .line 181
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_17

    or-int/lit8 p0, v0, 0x1

    int-to-short v0, p0

    :cond_17
    return v0
.end method

.method public static hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    if-nez p1, :cond_6

    goto :goto_18

    :cond_6
    const/16 v1, 0x12

    .line 164
    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0xb

    .line 166
    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0
.end method

.method public static hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z
    .registers 3

    .line 172
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    .line 173
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
