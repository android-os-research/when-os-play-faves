.class Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# static fields
.field static final AR_BUFFER_SIZE_BARO:I = 0x5


# instance fields
.field index:I

.field lowpassBaro:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 273
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    return-void
.end method
