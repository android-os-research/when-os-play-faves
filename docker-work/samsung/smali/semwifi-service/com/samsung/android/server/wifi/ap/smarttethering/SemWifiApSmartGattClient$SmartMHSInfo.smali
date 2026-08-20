.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartMHSInfo"
.end annotation


# instance fields
.field public MHS_MAC:Ljava/lang/String;

.field public clientMAC:Ljava/lang/String;

.field public state:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 6

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1965
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1966
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 1967
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1968
    iput p5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    return-void
.end method


# virtual methods
.method getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_3

    return-object p1

    .line 1978
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result p0

    if-eqz p0, :cond_a

    return-object p1

    .line 1981
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_22

    .line 1982
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientMAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",MHS_MAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
