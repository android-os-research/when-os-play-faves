.class Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# instance fields
.field accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

.field accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

.field baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

.field baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

.field bufIsReady:B

.field bufIsReadyMag:B

.field magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

.field magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 303
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 304
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 305
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 306
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    .line 307
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    return-void
.end method
