.class public Lcom/android/server/location/LocationManagerService$3;
.super Lcom/samsung/android/location/ISLocationLMSHook$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationManagerService;->setSLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getHWGeofence()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmGnssManagerService(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 769
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmGnssManagerService(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    .line 771
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmGnssManagerService(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->enableSLocation()V

    return-object v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 762
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isUidForeground(I)Z
    .registers 2

    .line 785
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/injector/Injector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result p0

    return p0
.end method

.method public updateRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 16

    .line 780
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/injector/Injector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateSLocationRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
