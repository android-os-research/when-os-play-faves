.class Lcom/android/internal/net/VpnConfig$1;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/net/VpnConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 370
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 371
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 375
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 376
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_59

    move v1, v2

    goto :goto_5a

    :cond_59
    move v1, v3

    :goto_5a
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->dport:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 392
    const-class v1, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_99

    move v1, v2

    goto :goto_9a

    :cond_99
    move v1, v3

    :goto_9a
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a4

    move v1, v2

    goto :goto_a5

    :cond_a4
    move v1, v3

    :goto_a5
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_af

    move v1, v2

    goto :goto_b0

    :cond_af
    move v1, v3

    :goto_b0
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ba

    move v1, v2

    goto :goto_bb

    :cond_ba
    move v1, v3

    :goto_bb
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c5

    move v1, v2

    goto :goto_c6

    :cond_c5
    move v1, v3

    :goto_c6
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d0

    move v1, v2

    goto :goto_d1

    :cond_d0
    move v1, v3

    :goto_d1
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_db

    move v1, v2

    goto :goto_dc

    :cond_db
    move v1, v3

    :goto_dc
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e5

    goto :goto_e6

    :cond_e5
    move v2, v3

    :goto_e6
    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 402
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 403
    const-class v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 404
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/net/VpnConfig;
    .registers 3
    .param p1, "size"    # I

    .line 409
    new-array v0, p1, [Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->newArray(I)[Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    return-object p1
.end method
