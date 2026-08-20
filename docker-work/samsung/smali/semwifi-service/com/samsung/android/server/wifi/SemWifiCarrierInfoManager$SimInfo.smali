.class Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
.super Ljava/lang/Object;
.source "SemWifiCarrierInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfo"
.end annotation


# instance fields
.field public final carrierIdFromSimMccMnc:I

.field public final imsi:Ljava/lang/String;

.field public final mccMnc:Ljava/lang/String;

.field public final simCarrierId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    .line 67
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    return-void
.end method


# virtual methods
.method public getCarrierType()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimInfo[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "IMSI="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$smgivePrintableImsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MCCMNC="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierIdFromSimMccMnc="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", simCarrierId="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierType="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->getCarrierType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
