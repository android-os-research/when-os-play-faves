.class Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# instance fields
.field EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

.field arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    .line 317
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    return-void
.end method
