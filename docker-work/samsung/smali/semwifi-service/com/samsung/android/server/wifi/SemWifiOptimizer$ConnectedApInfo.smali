.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;
.super Ljava/lang/Object;
.source "SemWifiOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectedApInfo"
.end annotation


# instance fields
.field public bssid:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isEnterpriseNetwork:Z

.field public nBssid2G:I

.field public nBssid5G:I

.field public nRcl2G:I

.field public nRcl5G:I

.field public ssid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->reset()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;-><init>()V

    return-void
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->ssid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid2G:I

    .line 413
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nBssid5G:I

    .line 414
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl2G:I

    .line 415
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->nRcl5G:I

    .line 416
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->isEnterpriseNetwork:Z

    .line 417
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$ConnectedApInfo;->bssid:Ljava/util/LinkedList;

    if-eqz p0, :cond_15

    .line 418
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_15
    return-void
.end method
