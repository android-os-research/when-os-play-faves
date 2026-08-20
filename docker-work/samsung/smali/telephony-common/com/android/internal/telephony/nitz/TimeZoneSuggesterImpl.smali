.class public Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;
.super Ljava/lang/Object;
.source "TimeZoneSuggesterImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private final blacklist mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    return-void
.end method

.method private blacklist countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .registers 5

    .line 342
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 343
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    .line 342
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private blacklist findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 6

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTimeZoneForTestNetwork: nitzSignal="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 146
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    if-nez p0, :cond_31

    const-string p0, "findTimeZoneForTestNetwork: No zone found"

    .line 149
    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_60

    .line 151
    :cond_31
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p1, 0x5

    .line 152
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 154
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x2

    .line 157
    :goto_49
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneForTestNetwork: lookupResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 161
    :goto_60
    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 14

    .line 171
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTimeZoneFromCountryAndNitz: countryIsoCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nitzSignal="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 179
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result p3

    if-eqz p3, :cond_3e

    const-string p0, "findTimeZoneFromCountryAndNitz: NITZ signal looks bogus"

    .line 181
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 187
    :cond_3e
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 188
    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    const-string v1, "ca"

    .line 191
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "NitzStateMachineImpl"

    const/4 v3, 0x1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v1

    const v4, -0x1b77400

    if-ne v1, v4, :cond_6e

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_6e

    const-string p3, "[NITZ] Exceptional case: Vancuver"

    .line 193
    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    goto :goto_d9

    :cond_6e
    const-string v1, "us"

    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v4

    const v5, -0xdbba00

    if-ne v4, v5, :cond_97

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_97

    const-string p3, "[NITZ] Exceptional case: Puerto Rico"

    .line 197
    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    const-string v1, "pr"

    invoke-virtual {p3, p1, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    goto :goto_d9

    :cond_97
    if-nez p3, :cond_ad

    .line 199
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    const-string p3, "[NITZ] Exceptional case: Guam"

    .line 200
    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    const-string v1, "gu"

    invoke-virtual {p3, p1, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    goto :goto_d9

    :cond_ad
    if-nez p3, :cond_d9

    const-string v1, "jm"

    .line 202
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    const/4 v1, 0x6

    const-string v4, "bm"

    const-string v5, "ag"

    const-string v6, "kn"

    const-string v7, "dm"

    const-string v8, "tc"

    const-string v9, "ky"

    .line 211
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_c9
    if-ge v5, v1, :cond_d9

    .line 212
    aget-object p3, v4, v5

    .line 213
    iget-object v6, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {v6, p1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    if-eqz p3, :cond_d6

    goto :goto_d9

    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_c9

    :cond_d9
    :goto_d9
    if-eqz p3, :cond_f7

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NITZ] New zone id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    const/4 v1, 0x2

    if-eqz p3, :cond_12d

    .line 224
    invoke-virtual {p3}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p0, 0x3

    .line 225
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 227
    invoke-virtual {p3}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p0

    if-eqz p0, :cond_110

    goto :goto_111

    :cond_110
    move v3, v1

    .line 230
    :goto_111
    invoke-virtual {v0, v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findTimeZoneFromCountryAndNitz: lookupResult="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 237
    :cond_12d
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v4

    .line 237
    invoke-virtual {p0, p2, v4, v5}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p0

    if-nez p0, :cond_143

    const-string p0, "findTimeZoneFromCountryAndNitz: lookupByCountry() country not recognized"

    .line 241
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 249
    :cond_143
    iget p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    if-eq p1, v3, :cond_163

    if-ne p1, v1, :cond_14a

    goto :goto_163

    .line 262
    :cond_14a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: country-only suggestion quality not high enough. countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 264
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 251
    :cond_163
    :goto_163
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 252
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 254
    invoke-virtual {v0, v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: high quality country-only suggestion: countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 10

    .line 277
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 282
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTimeZoneFromNetworkCountryCode: whenMillis="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countryIsoCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 289
    iget-object v1, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 v1, 0x2

    .line 290
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 294
    iget v2, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_73

    if-ne v2, v1, :cond_44

    goto :goto_73

    :cond_44
    if-ne v2, v3, :cond_48

    move v3, v1

    goto :goto_74

    :cond_48
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4c

    goto :goto_74

    .line 304
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookupResult.quality not recognized: countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", whenMillis="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", lookupResult="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    :goto_73
    move v3, v4

    .line 310
    :goto_74
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->isMultiTzAsSingleTzConcept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_88

    const-string p0, "cl"

    .line 313
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    const-string p0, "America/Santiago"

    .line 314
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_89

    :cond_88
    move v1, v3

    .line 318
    :cond_89
    :goto_89
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromNetworkCountryCode: lookupResult="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_a6

    :cond_a1
    const-string p0, "findTimeZoneFromNetworkCountryCode: Country not recognized?"

    .line 322
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 325
    :goto_a6
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 279
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "countryIsoCode must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isMultiTzAsSingleTzConcept(Ljava/lang/String;)Z
    .registers 8

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const-string v0, "cn"

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NitzStateMachineImpl"

    const/4 v2, 0x1

    if-nez v0, :cond_8d

    const-string v0, "ua"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "cl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_8d

    .line 361
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_49

    move v3, v2

    goto :goto_4a

    :cond_49
    move v3, v5

    :goto_4a
    if-eqz v3, :cond_6a

    const-string v3, "21405"

    .line 363
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v3, "21407"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v3, "21432"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_64
    const-string p0, "TIMEZONE : isMultiTZ - Spain TEF, Regard as single timezone"

    .line 364
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 373
    :cond_6a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "MEO"

    const-string v3, "OPT"

    const-string v4, "TPH"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8c

    const-string p0, "pt"

    .line 374
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    const-string p0, "TIMEZONE : isMultiTZ - Portugal, Regard as single timezone"

    .line 375
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8c
    return v5

    .line 352
    :cond_8d
    :goto_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TIMEZONE : isMultiTZ - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is single timezone"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .registers 6

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 337
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_1b

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result p0

    if-nez p0, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method


# virtual methods
.method public blacklist getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_44

    .line 64
    :try_start_3
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 66
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 68
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 69
    invoke-virtual {v0, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emulator time zone override: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_44

    :catch_42
    move-exception p0

    goto :goto_9a

    :cond_44
    :goto_44
    if-eqz v0, :cond_47

    goto :goto_96

    :cond_47
    if-nez p2, :cond_6d

    if-nez p3, :cond_52

    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=null"

    .line 81
    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 85
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTimeZoneSuggestion: nitzSignal="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", countryIsoCode=null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    :cond_6d
    if-nez p3, :cond_87

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=\"\""

    .line 92
    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 96
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 97
    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 100
    :cond_87
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 109
    :cond_92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 116
    :goto_96
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_99} :catch_42

    return-object v0

    .line 122
    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeZoneSuggestion: Error during lookup:  countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", nitzSignal="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", e="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p1

    const-string p3, "NitzStateMachineImpl"

    .line 127
    invoke-static {p3, p2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
