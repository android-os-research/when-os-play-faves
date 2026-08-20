.class public Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 180
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->stop()V

    .line 181
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-static {p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->-$$Nest$mqueryCountryCode(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V

    :cond_c
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
