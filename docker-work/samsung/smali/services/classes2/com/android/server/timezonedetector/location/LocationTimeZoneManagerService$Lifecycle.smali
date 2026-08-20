.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LocationTimeZoneManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-static {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_12

    .line 107
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->onSystemReady()V

    goto :goto_1b

    :cond_12
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1b

    .line 111
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->onSystemThirdPartyAppsCanStart()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 92
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v1, v0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    const-string v0, "location_time_zone_manager"

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_22

    :cond_1b
    const-string p0, "LocationTZDetector"

    const-string v0, "Geo time zone detection feature is disabled in config"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method
