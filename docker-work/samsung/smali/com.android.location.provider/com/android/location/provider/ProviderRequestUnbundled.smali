.class public final Lcom/android/location/provider/ProviderRequestUnbundled;
.super Ljava/lang/Object;
.source "ProviderRequestUnbundled.java"


# static fields
.field public static final INTERVAL_DISABLED:J = 0x7fffffffffffffffL


# instance fields
.field private final mRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Landroid/location/provider/ProviderRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 48
    return-void
.end method


# virtual methods
.method public getInterval()J
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationRequests()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/location/provider/LocationRequestUnbundled;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 117
    :cond_d
    new-instance v0, Lcom/android/location/provider/LocationRequestUnbundled;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    iget-object v2, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 118
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    iget-object v2, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 119
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 120
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setLowPower(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 121
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 122
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/location/provider/LocationRequestUnbundled;-><init>(Landroid/location/LocationRequest;)V

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUpdateDelayMillis()J
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuality()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getQuality()I

    move-result v0

    return v0
.end method

.method public getReportLocation()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method public isLocationSettingsIgnored()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result v0

    return v0
.end method

.method public isLowPower()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
