.class public Lcom/samsung/android/server/wifi/wcm/QcFailHistory;
.super Ljava/lang/Object;
.source "QcFailHistory.java"


# instance fields
.field public apIndex:I

.field public avoidance:Z

.field public bssid:Ljava/lang/String;

.field public bytes:I

.field public currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public dataRate:I

.field public detection:Z

.field public error:I

.field public line:I

.field public netstat:Ljava/lang/String;

.field public qcStep:I

.field public qcStepTemp:I

.field public qcTrigger:I

.field public qcTriggerTemp:I

.field public qcType:I

.field public qcUrlIndex:I

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->state:Ljava/lang/String;

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcType:I

    .line 49
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    .line 50
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 51
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 52
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTriggerTemp:I

    .line 53
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcUrlIndex:I

    .line 54
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 55
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->bytes:I

    .line 56
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->rssi:I

    .line 57
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->dataRate:I

    const/4 v2, 0x0

    .line 58
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->detection:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->avoidance:Z

    .line 60
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->apIndex:I

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->ssid:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->bssid:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->netstat:Ljava/lang/String;

    return-void
.end method
