.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;
.super Ljava/lang/Object;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiIfaceInfo"
.end annotation


# instance fields
.field public iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
