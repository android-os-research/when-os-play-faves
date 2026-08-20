.class Lcom/samsung/android/gesture/AR_FEATURE;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# instance fields
.field accData:Lcom/samsung/android/gesture/AR_SENSORDATA;

.field accFeature:Lcom/samsung/android/gesture/AR_ACCFEATURE;

.field baroData:Lcom/samsung/android/gesture/AR_BARODATA;

.field baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

.field bufIsReady:B

.field bufIsReadyMag:B

.field magData:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

.field magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Lcom/samsung/android/gesture/AR_BARODATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_BARODATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->baroData:Lcom/samsung/android/gesture/AR_BARODATA;

    .line 298
    new-instance v0, Lcom/samsung/android/gesture/AR_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->accData:Lcom/samsung/android/gesture/AR_SENSORDATA;

    .line 299
    new-instance v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->magData:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 300
    new-instance v0, Lcom/samsung/android/gesture/AR_BAROFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_BAROFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    .line 301
    new-instance v0, Lcom/samsung/android/gesture/AR_ACCFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_ACCFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->accFeature:Lcom/samsung/android/gesture/AR_ACCFEATURE;

    .line 302
    new-instance v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_MAGFEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    .line 303
    return-void
.end method
