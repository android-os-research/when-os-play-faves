.class public final Lcom/android/location/provider/ProviderPropertiesUnbundled;
.super Ljava/lang/Object;
.source "ProviderPropertiesUnbundled.java"


# instance fields
.field private final mProperties:Landroid/location/provider/ProviderProperties;


# direct methods
.method private constructor <init>(Landroid/location/provider/ProviderProperties;)V
    .registers 3
    .param p1, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/ProviderProperties;

    iput-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 56
    return-void
.end method

.method public static create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;
    .registers 11
    .param p0, "requiresNetwork"    # Z
    .param p1, "requiresSatellite"    # Z
    .param p2, "requiresCell"    # Z
    .param p3, "hasMonetaryCost"    # Z
    .param p4, "supportsAltitude"    # Z
    .param p5, "supportsSpeed"    # Z
    .param p6, "supportsBearing"    # Z
    .param p7, "powerUsage"    # I
    .param p8, "accuracy"    # I

    .line 39
    new-instance v0, Lcom/android/location/provider/ProviderPropertiesUnbundled;

    new-instance v1, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v1}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 40
    invoke-virtual {v1, p0}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p1}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p7}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p8}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/location/provider/ProviderPropertiesUnbundled;-><init>(Landroid/location/provider/ProviderProperties;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_4

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 77
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .line 78
    .local v0, "that":Lcom/android/location/provider/ProviderPropertiesUnbundled;
    iget-object v1, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    iget-object v2, v0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 74
    .end local v0    # "that":Lcom/android/location/provider/ProviderPropertiesUnbundled;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderProperties()Landroid/location/provider/ProviderProperties;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
