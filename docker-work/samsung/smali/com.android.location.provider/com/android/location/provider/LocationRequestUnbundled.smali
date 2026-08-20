.class public final Lcom/android/location/provider/LocationRequestUnbundled;
.super Ljava/lang/Object;
.source "LocationRequestUnbundled.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_CITY:I = 0x68
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_FINE:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_HIGH:I = 0xcb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_LOW:I = 0xc9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_NONE:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final delegate:Landroid/location/LocationRequest;


# direct methods
.method constructor <init>(Landroid/location/LocationRequest;)V
    .registers 2
    .param p1, "delegate"    # Landroid/location/LocationRequest;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    .line 78
    return-void
.end method


# virtual methods
.method public getFastestInterval()J
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterval()J
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuality()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v0

    return v0
.end method

.method public getSmallestDisplacement()F
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    return v0
.end method

.method public isLocationSettingsIgnored()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
