.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;
.super Ljava/lang/Object;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiChipInfo"
.end annotation


# instance fields
.field public availableModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;"
        }
    .end annotation
.end field

.field public chip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

.field public chipId:I

.field public currentModeId:I

.field public currentModeIdValid:Z

.field public ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$sfgetIFACE_TYPES_BY_PRIORITY()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{chipId="

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", availableModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentModeIdValid="

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentModeId="

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$sfgetIFACE_TYPES_BY_PRIORITY()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_61

    aget v4, v1, v3

    .line 512
    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    aget-object v5, v5, v4

    if-eqz v5, :cond_5e

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", ifaces["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "].length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    aget-object v4, v5, v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_61
    const-string p0, "}"

    .line 516
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
