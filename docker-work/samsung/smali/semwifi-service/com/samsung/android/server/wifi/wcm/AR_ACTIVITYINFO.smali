.class Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# instance fields
.field isActivity:Z

.field previousActivity:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    return-void
.end method
