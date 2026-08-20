.class public Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;
.super Ljava/lang/Object;
.source "LppeFusedLocationHelper.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;,
        Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "LppeFusedLocationHelper"

.field public static final eTAG:Ljava/lang/String; = "LocationX"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mFlpTimeout:Ljava/lang/Runnable;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFlpRequested:Z

.field public mIsRetryWifiScan:Z

.field public mIsUbpRequested:Z

.field public mIsWifiScanRequested:Z

.field public final mLocationListener:Landroid/location/LocationListener;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mPressureSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mUbpTimeout:Ljava/lang/Runnable;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiScanner:Landroid/net/wifi/WifiScanner;

.field public mWlanTimeout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$SJmQII5jI5RmeJi4d4Zv1HCJOiM(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->lambda$onRequestWifiScan$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fuXLKICkfRpuY279TNB231lisIs(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->lambda$onRequestFlpLocation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$si8eJBA5h4VdNcCCE7RMTLh6JV0(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->lambda$onRequestUbpInfo$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFlpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFlpRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRetryWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUbpRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWifiScanRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUbpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWlanTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFlpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRetryWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWifiScanRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUbpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWlanTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateLPPeFLPLocation(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Landroid/location/Location;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateLPPeFLPLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateUBPInfo(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateUBPInfo(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateWLANScanInfo(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWLANScanInfo(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateWlanError(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->startWifiScan()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Landroid/os/Looper;)V
    .registers 6

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    .line 58
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 60
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 61
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 62
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    .line 80
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 81
    new-instance v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationListener:Landroid/location/LocationListener;

    const-string v0, "LppeFusedLocationHelper"

    const-string v1, "Constructor"

    .line 511
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    .line 513
    iput-object p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 514
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 515
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 516
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->initializeLppeLocationHelper()V

    .line 517
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLppeHelperCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;)V

    return-void
.end method

.method public static convertStringToHexLong(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    const-string v0, ":"

    const-string v1, ""

    .line 354
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    .line 355
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    const-string p0, "LocationX"

    const-string v0, "convertStringToHexLong : NumberFormatException"

    .line 357
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_18
    return-wide v0
.end method

.method private synthetic lambda$onRequestFlpLocation$0()V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    if-eqz v0, :cond_12

    const-string v0, "LocationX"

    const-string v1, "FLP measurement is timeout"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateFLPError(I)V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    :cond_12
    return-void
.end method

.method private synthetic lambda$onRequestUbpInfo$1()V
    .registers 3

    .line 287
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    if-eqz v0, :cond_19

    const-string v0, "LocationX"

    const-string v1, "UBP measurement is timeout"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateUBPError(I)V

    .line 290
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    :cond_19
    return-void
.end method

.method private synthetic lambda$onRequestWifiScan$2()V
    .registers 3

    .line 428
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    if-eqz v0, :cond_13

    const-string v0, "LocationX"

    const-string/jumbo v1, "wlan measurement is timeout"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError(I)V

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    :cond_13
    return-void
.end method


# virtual methods
.method public final getResponseTime(II)J
    .registers 5

    const-wide/16 v0, 0x3e8

    if-ge p1, p2, :cond_6

    int-to-long p0, p1

    goto :goto_7

    :cond_6
    int-to-long p0, p2

    :goto_7
    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public final handleUpdateCommonIesCapability()V
    .registers 14

    const-string v0, "LocationX"

    const-string/jumbo v1, "handleUpdateCommonIesCapability : highAccCapa Supported "

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLppeComIeCapability(IZZZIZZZZZ)V

    return-void
.end method

.method public final handleUpdateFLPError(I)V
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateFLPError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectFlpError(I)V

    return-void
.end method

.method public final handleUpdateLPPeFLPLocation(Landroid/location/Location;)V
    .registers 23

    move-object/from16 v0, p0

    const-string v1, "LocationX"

    const-string v2, "LPPe handleUpdateLPPeFLPLocation"

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    or-int/lit8 v2, v2, 0x1

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x4

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    or-int/2addr v2, v4

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v4, 0x8

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    or-int/2addr v2, v4

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_33

    const/16 v4, 0x10

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    or-int/2addr v2, v4

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_3f

    move v4, v5

    goto :goto_40

    :cond_3f
    move v4, v3

    :goto_40
    or-int/2addr v2, v4

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4a

    const/16 v4, 0x40

    goto :goto_4b

    :cond_4a
    move v4, v3

    :goto_4b
    or-int/2addr v2, v4

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_55

    const/16 v4, 0x80

    goto :goto_56

    :cond_55
    move v4, v3

    :goto_56
    or-int/2addr v2, v4

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " location total flag : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Landroid/location/Location;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 191
    invoke-virtual {v4}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v7

    if-nez v7, :cond_94

    .line 193
    invoke-virtual {v4}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_84

    const/high16 v7, 0x42c80000    # 100.0f

    .line 194
    invoke-virtual {v4, v7}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_93

    :cond_84
    const-wide v7, 0x4133880000000000L    # 1280000.0

    .line 197
    invoke-virtual {v4, v7, v8}, Landroid/location/Location;->setAltitude(D)V

    or-int/lit8 v2, v2, 0x2

    const/high16 v7, 0x437f0000    # 255.0f

    .line 199
    invoke-virtual {v4, v7}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :goto_93
    or-int/2addr v2, v5

    .line 203
    :cond_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Vertical Accuracy : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", Horizontal Accuracy : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 207
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v13

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v14

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 208
    invoke-virtual {v4}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    invoke-virtual {v4}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 209
    invoke-virtual {v4}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    move v6, v2

    .line 206
    invoke-virtual/range {v5 .. v20}, Lcom/android/server/location/gnss/hal/GnssNative;->injectFlpLocation(IDDDFFFFFFJ)V

    .line 211
    iput-boolean v3, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    return-void
.end method

.method public final handleUpdateUBPCapability()V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    .line 232
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateUBPCapability : isUbpSupported  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationX"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpCapability(ZZZZ)V

    return-void
.end method

.method public final handleUpdateUBPError(I)V
    .registers 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateUBPError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpError(I)V

    return-void
.end method

.method public final handleUpdateUBPInfo(I)V
    .registers 6

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateUBPInfo = sensorMeasurement : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (Valid range  30000 ~ 115000)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7530

    if-lt p1, v0, :cond_42

    const v0, 0x1c138

    if-gt p1, v0, :cond_42

    const/16 v0, 0x8

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateUBPInfo = bitMask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpInfo(II)V

    goto :goto_48

    .line 311
    :cond_42
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpError(I)V

    :goto_48
    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 314
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public final handleUpdateWLANCapbility()V
    .registers 11

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateWLANCapbility : ecidMeasSupported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x8c20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wlanTypesSupported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xfc00

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const v3, 0x8c20

    const v4, 0xfc00

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanCapability(IIJIII)V

    return-void
.end method

.method public final handleUpdateWLANScanInfo(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "LocationX"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_30

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI Scan size"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "error cause"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError(I)V

    goto/16 :goto_cb

    .line 447
    :cond_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v5, v4, [J

    new-array v6, v4, [I

    new-array v4, v4, [I

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LPPeWiFiReceiver : the number of AP scaned : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " used number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    .line 460
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 463
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v2, :cond_99

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 464
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 466
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->convertStringToHexLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v3

    .line 467
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v9

    aput v9, v4, v3

    .line 468
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    aput v1, v6, v3

    goto :goto_9a

    :cond_99
    move v2, v3

    :goto_9a
    move v1, v3

    :goto_9b
    sub-int v9, v0, v2

    if-ge v1, v9, :cond_c6

    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    add-int v10, v1, v2

    .line 475
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->convertStringToHexLong(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v5, v10

    if-eqz v2, :cond_b7

    cmp-long v11, v7, v11

    if-nez v11, :cond_b7

    move v2, v3

    goto :goto_c3

    .line 480
    :cond_b7
    iget v11, v9, Landroid/net/wifi/ScanResult;->level:I

    aput v11, v6, v10

    .line 481
    iget v9, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v9

    aput v9, v4, v10

    :goto_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 494
    :cond_c6
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, v5, v6, v4, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanScanInfo([J[I[II)V

    .line 496
    :goto_cb
    iput-boolean v3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    return-void
.end method

.method public final handleUpdateWlanError(I)V
    .registers 4

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUpdateWLANError :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanError(I)V

    return-void
.end method

.method public final initializeLppeLocationHelper()V
    .registers 3

    const-string v0, "LppeFusedLocationHelper"

    const-string/jumbo v1, "initializeLppeLocationHelper"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 523
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 524
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 525
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 526
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifiscanner"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-void
.end method

.method public onRequestFlpLocation(I)V
    .registers 9

    .line 139
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    const-string v1, "LocationX"

    if-eqz v0, :cond_c

    const-string p0, "already requested FlpLocation"

    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestFlpLocation response time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fused"

    sub-int/2addr p1, v0

    const/16 v3, 0x14

    .line 147
    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->getResponseTime(II)J

    move-result-wide v3

    .line 150
    new-instance p1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v5, 0x3e8

    invoke-direct {p1, v5, v6}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    const/16 v5, 0x66

    .line 153
    invoke-virtual {p1, v5}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v0, "Start LocationManager.FUSED_PROVIDER"

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    sget-object v5, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2, p1, v5, v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 160
    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Ljava/lang/Runnable;

    .line 167
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_80

    const-string p0, "failed to add FLP timeout to message queue."

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :cond_7b
    const-string p0, "Unable to request location."

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    return-void
.end method

.method public onRequestLppeCommonIesCapability()V
    .registers 3

    const-string v0, "LocationX"

    const-string/jumbo v1, "requestLppeCommonIesCapability"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateCommonIesCapability()V

    return-void
.end method

.method public onRequestUbpCapability()V
    .registers 3

    const-string v0, "LocationX"

    const-string/jumbo v1, "requestUbpCapability"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateUBPCapability()V

    return-void
.end method

.method public onRequestUbpInfo(I)V
    .registers 8

    .line 263
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    const-string v1, "LocationX"

    if-eqz v0, :cond_c

    const-string p0, "already requested UbpInfo"

    .line 264
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    .line 268
    new-instance v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener-IA;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestUbpInfo response time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_45

    const-string/jumbo v2, "requestUBPInfo : Caution (PressureSensor is null) "

    .line 272
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    .line 276
    :cond_45
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 280
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isMtkGnss()Z

    move-result v2

    if-eqz v2, :cond_5e

    const/16 v0, 0xf

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->getResponseTime(II)J

    move-result-wide v2

    goto :goto_65

    :cond_5e
    sub-int/2addr p1, v0

    const/16 v0, 0xe

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->getResponseTime(II)J

    move-result-wide v2

    .line 286
    :goto_65
    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Ljava/lang/Runnable;

    .line 294
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_79

    const-string p0, "failed to add UBP timeout to message queue."

    .line 295
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-void
.end method

.method public onRequestWifiCapability()V
    .registers 3

    const-string v0, "LocationX"

    const-string/jumbo v1, "requestWlanCapability"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWLANCapbility()V

    return-void
.end method

.method public onRequestWifiScan(I)V
    .registers 6

    .line 416
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    const-string v1, "LocationX"

    if-eqz v0, :cond_c

    const-string p0, "already requested WlanScanInfo."

    .line 417
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestWlanScanInfo. response time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->startWifiScan()V

    sub-int/2addr p1, v0

    const/16 v0, 0xb

    .line 425
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->getResponseTime(II)J

    move-result-wide v2

    .line 427
    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    .line 434
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_4b

    const-string p0, "failed to add WLAN timeout to message queue."

    .line 435
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method

.method public final startWifiScan()V
    .registers 5

    .line 407
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/16 v1, 0x1b

    .line 408
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v1, 0x0

    .line 409
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 v1, 0x1

    .line 410
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    .line 411
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener-IA;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method
