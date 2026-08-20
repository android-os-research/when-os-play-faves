.class public Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;,
        Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID:Ljava/lang/String; = "GnssService"

.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "GnssManager"


# instance fields
.field public final mCapabilitiesHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

.field public final mContext:Landroid/content/Context;

.field public final mGeofenceHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

.field public final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field public final mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field public final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field public final mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field public final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSLocationProxy(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/sec/SLocationProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GnssService"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 92
    new-instance v0, Lcom/android/server/location/gnss/GnssMetrics;

    const-string v1, "batterystats"

    .line 93
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/location/gnss/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 95
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 97
    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssStatusProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 98
    new-instance p1, Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNmeaProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 99
    new-instance p1, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 100
    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 101
    new-instance p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 102
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->setNSLocationProviderHelper(Lcom/android/server/location/nsflp/NSLocationProviderHelper;)V

    .line 103
    new-instance p1, Lcom/android/server/location/gnss/GnssGeofenceProxy;

    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssGeofenceProxy;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 105
    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGeofenceHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 106
    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mCapabilitiesHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    .line 109
    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->register()V

    .line 111
    new-instance p1, Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-direct {p1}, Lcom/android/server/location/gnss/sec/SLocationProxy;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 293
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V

    return-void
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 238
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 240
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 244
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 271
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 275
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 318
    array-length v0, p3

    if-lez v0, :cond_18

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--gnssmetrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 319
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    .line 323
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "Status Provider:"

    .line 326
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 328
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    :cond_4a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "Measurements Provider:"

    .line 333
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 335
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    :cond_62
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "Navigation Message Provider:"

    .line 340
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 342
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 346
    :cond_7a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "Antenna Info Provider:"

    .line 347
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Antenna Infos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->getAntennaInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 354
    :cond_ac
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;

    move-result-object v0

    if-eqz v0, :cond_c8

    const-string v1, "Last Power Stats:"

    .line 356
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 358
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/location/gnss/GnssPowerStats;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V

    .line 359
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_c8
    return-void
.end method

.method public enableSLocation()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SLocationProxy;->enableSLocation()V

    .line 149
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    if-eqz v0, :cond_16

    .line 150
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSLocationSvCallback(Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;)V

    .line 152
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    if-eqz v0, :cond_27

    .line 153
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssStatusProvider;->setSLocationStatusCallback(Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;)V

    :cond_27
    return-void
.end method

.method public getGnssAntennaInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->getAntennaInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGnssBatchSize()I
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result p0

    return p0
.end method

.method public getGnssCapabilities()Landroid/location/GnssCapabilities;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-object p0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareModelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-object p0
.end method

.method public getGnssYearOfHardware()I
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareYear()I

    move-result p0

    return p0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    if-nez p0, :cond_1e

    const-string p0, "GnssManager"

    const-string p1, "failed to inject GNSS measurement corrections"

    .line 255
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAutomotiveGnssSuspended()Z

    move-result p0

    return p0
.end method

.method public onSystemReady()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onSystemReady()V

    return-void
.end method

.method public registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 218
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 222
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 203
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->removeListener(Landroid/location/IGnssAntennaInfoListener;)V

    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method

.method public sendNiResponse(II)V
    .registers 3

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 310
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setAutomotiveGnssSuspended(Z)V

    return-void
.end method

.method public unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->removeListener(Landroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method
