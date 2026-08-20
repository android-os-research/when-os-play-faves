.class public abstract Lcom/android/location/provider/GeofenceProvider;
.super Ljava/lang/Object;
.source "GeofenceProvider.java"


# instance fields
.field private mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

.field private mProvider:Landroid/location/IGeofenceProvider$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGeofenceHardware(Lcom/android/location/provider/GeofenceProvider;)Landroid/hardware/location/GeofenceHardware;
    .registers 1

    iget-object p0, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGeofenceHardware(Lcom/android/location/provider/GeofenceProvider;Landroid/hardware/location/GeofenceHardware;)V
    .registers 2

    iput-object p1, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/location/provider/GeofenceProvider$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/GeofenceProvider$1;-><init>(Lcom/android/location/provider/GeofenceProvider;)V

    iput-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    return-object v0
.end method

.method public abstract onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V
.end method
