.class public final Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.super Ljava/lang/Object;
.source "MetricsTimeZoneDetectorState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$DetectionMode;
    }
.end annotation


# static fields
.field public static final DETECTION_MODE_GEO:I = 0x2

.field public static final DETECTION_MODE_MANUAL:I = 0x1

.field public static final DETECTION_MODE_TELEPHONY:I = 0x3

.field public static final DETECTION_MODE_UNKNOWN:I


# instance fields
.field public final mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final mDeviceTimeZoneId:Ljava/lang/String;

.field public final mDeviceTimeZoneIdOrdinal:I

.field public final mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field public final mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field public final mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V
    .registers 7

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 75
    iput p2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 76
    iput-object p3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 78
    iput-object p5, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 79
    iput-object p6, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-void
.end method

.method public static create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/timezonedetector/ConfigurationInternal;",
            "Ljava/lang/String;",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            ")",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isEnhancedMetricsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v5, p2

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    move-object v5, v1

    .line 97
    :goto_a
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result v4

    .line 99
    invoke-static {p0, p3, v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v6

    .line 102
    invoke-static {p0, p4, v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v7

    .line 105
    invoke-static {p0, p5, v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v8

    .line 108
    new-instance p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V

    return-object p0
.end method

.method public static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 261
    :cond_4
    invoke-virtual {p1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_10

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    :cond_10
    new-array p2, v2, [I

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    .line 264
    invoke-static {v0, p2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 275
    :cond_4
    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    .line 277
    invoke-static {}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createUncertain()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    :cond_17
    new-array p2, v2, [I

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    .line 281
    invoke-static {v0, p2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static createMetricsTimeZoneSuggestion(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Z)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/OrdinalGenerator<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            "Z)",
            "Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 293
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_f

    .line 295
    invoke-static {}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createUncertain()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz p2, :cond_1b

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 297
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 298
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinals(Ljava/util/List;)[I

    move-result-object p0

    .line 299
    invoke-static {v0, p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->createCertain([Ljava/lang/String;[I)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 222
    const-class v2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_4d

    .line 225
    :cond_10
    check-cast p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 226
    iget v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    iget v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 227
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 228
    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 229
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 230
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    iget-object p1, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 231
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public getAutoDetectionEnabledSetting()Z
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledSetting()Z

    move-result p0

    return p0
.end method

.method public getDetectionMode()I
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0
.end method

.method public getDeviceTimeZoneId()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceTimeZoneIdOrdinal()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    return p0
.end method

.method public getGeoDetectionEnabledSetting()Z
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result p0

    return p0
.end method

.method public getGeoDetectionRunInBackgroundEnabled()Z
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result p0

    return p0
.end method

.method public getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object p0
.end method

.method public getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object p0
.end method

.method public getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    return-object p0
.end method

.method public getUserLocationEnabledSetting()Z
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getLocationEnabledSetting()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEnhancedMetricsCollectionEnabled()Z
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isEnhancedMetricsCollectionEnabled()Z

    move-result p0

    return p0
.end method

.method public isGeoDetectionSupported()Z
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result p0

    return p0
.end method

.method public isTelephonyDetectionSupported()Z
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result p0

    return p0
.end method

.method public isTelephonyTimeZoneFallbackSupported()Z
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetricsTimeZoneDetectorState{mConfigurationInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceTimeZoneIdOrdinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceTimeZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestManualSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestTelephonySuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestGeolocationSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
