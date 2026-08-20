.class public Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

.field public final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 3

    .line 239
    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 243
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-virtual {p0, v1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->notifyListener(Landroid/location/Country;)V

    return-void

    .line 246
    :cond_b
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-virtual {v2, v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 248
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    new-instance v3, Landroid/location/Country;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    goto :goto_22

    .line 250
    :cond_1e
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    .line 252
    :goto_22
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object v2, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    invoke-virtual {v0, v2}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->notifyListener(Landroid/location/Country;)V

    .line 253
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    return-void
.end method
