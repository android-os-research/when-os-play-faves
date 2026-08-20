.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
.super Ljava/lang/Object;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeakyApDetectionResult"
.end annotation


# instance fields
.field activeDetectionCnt:I

.field bssid:Ljava/lang/String;

.field chipsetOui:Ljava/lang/String;

.field detectedTime:J

.field frequency:I

.field passiveDetectionCnt:I

.field sessionDetectionCnt:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 693
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectedTime:J

    const/4 v0, 0x0

    .line 694
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->frequency:I

    .line 695
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->activeDetectionCnt:I

    .line 696
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->passiveDetectionCnt:I

    .line 697
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->sessionDetectionCnt:I

    const-string v0, ""

    .line 698
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 699
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->chipsetOui:Ljava/lang/String;

    return-void
.end method
