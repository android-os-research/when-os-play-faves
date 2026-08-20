.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field public static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field public static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field public mCountServiceStateChanges:I

.field public mCountry:Landroid/location/Country;

.field public mCountryFromLocation:Landroid/location/Country;

.field public final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field public mLastCountryAddedToLogs:Landroid/location/Country;

.field public mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field public mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

.field public mLocationRefreshTimer:Ljava/util/Timer;

.field public final mObject:Ljava/lang/Object;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mStartTime:J

.field public mStopTime:J

.field public mStopped:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTotalCountServiceStateChanges:I

.field public mTotalTime:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCountryFromLocation(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdetectCountry(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misNetworkCountryCodeAvailable(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstopLocationBasedDetector(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    const-string/jumbo v0, "phone"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized addPhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_12

    .line 444
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 458
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 460
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addToLogs(Landroid/location/Country;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_12
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 199
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    .line 201
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_24

    .line 202
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 207
    :cond_24
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_2a
    move-exception p0

    .line 199
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final declared-synchronized cancelLocationRefresh()V
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_b

    .line 437
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 440
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createLocationBasedCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;
    .registers 2

    .line 384
    new-instance v0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 3

    .line 151
    iget-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object p0

    return-object p0
.end method

.method public final detectCountry(ZZ)Landroid/location/Country;
    .registers 6

    .line 271
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_f

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :cond_f
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 274
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v0
.end method

.method public final getCountry()Landroid/location/Country;
    .registers 2

    .line 170
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_10

    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_16

    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 180
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    return-object v0
.end method

.method public getLastKnownLocationBasedCountry()Landroid/location/Country;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p0
.end method

.method public getLocaleCountry()Landroid/location/Country;
    .registers 3

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 257
    new-instance v0, Landroid/location/Country;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkBasedCountry()Landroid/location/Country;
    .registers 3

    .line 223
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 226
    new-instance v0, Landroid/location/Country;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimBasedCountry()Landroid/location/Country;
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 246
    new-instance v0, Landroid/location/Country;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAirplaneModeOff()Z
    .registers 3

    .line 388
    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    .line 388
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isGeoCoderImplemented()Z
    .registers 1

    .line 470
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p0

    return p0
.end method

.method public final isNetworkCountryCodeAvailable()Z
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isWifiOn()Z
    .registers 3

    .line 393
    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_on"

    const/4 v1, 0x0

    .line 393
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public final notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .registers 4

    if-eqz p2, :cond_11

    .line 401
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 402
    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 406
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->notifyListener(Landroid/location/Country;)V

    :cond_11
    return-void
.end method

.method public declared-synchronized removePhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 463
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_e

    .line 464
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 467
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 5

    if-eqz p3, :cond_5

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    :cond_5
    const/4 p1, 0x1

    if-eqz p4, :cond_2b

    if-eqz p2, :cond_10

    .line 329
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result p3

    if-le p3, p1, :cond_2b

    .line 330
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result p3

    if-nez p3, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isWifiOn()Z

    move-result p3

    if-eqz p3, :cond_2b

    :cond_1c
    iget-object p3, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz p3, :cond_2b

    .line 331
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 338
    iget-object p3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-virtual {p0, p3}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    :cond_2b
    if-eqz p2, :cond_3b

    .line 341
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result p2

    if-lt p2, p1, :cond_34

    goto :goto_3b

    .line 351
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_3e

    .line 347
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    :goto_3e
    return-void
.end method

.method public runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 13

    .line 283
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized scheduleLocationRefresh()V
    .registers 5

    monitor-enter p0

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 419
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 420
    new-instance v1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    .line 430
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 6

    .line 294
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 295
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-nez p1, :cond_1b

    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 302
    iget-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    goto :goto_31

    :cond_1b
    if-nez v0, :cond_31

    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->addPhoneStateListener()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    const-wide/16 v1, 0x0

    .line 307
    iput-wide v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 308
    iput v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    :cond_31
    :goto_31
    return-void
.end method

.method public final declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .registers 3

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 361
    monitor-exit p0

    return-void

    .line 367
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 368
    invoke-virtual {v0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 369
    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    invoke-virtual {p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    .line 370
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .registers 3

    const-string v0, "CountryDetector"

    const-string v1, "Stop the detector."

    .line 157
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    return-void
.end method

.method public final declared-synchronized stopLocationBasedDetector()V
    .registers 2

    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    if-eqz v0, :cond_b

    .line 378
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->stop()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 381
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComprehensiveCountryDetector{"

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, ", "

    if-nez v3, :cond_35

    .line 481
    iget-wide v5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v5, v0, v5

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRunning="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 485
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lastRunTimeLength="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v9, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalCountServiceStateChanges="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentCountServiceStateChanges="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalTime="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "countries="

    .line 491
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Country;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c2

    :cond_e7
    const-string/jumbo p0, "}"

    .line 495
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
