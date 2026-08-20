.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;
.super Ljava/lang/Object;
.source "SemWifiApTetheredClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemClient"
.end annotation


# instance fields
.field public IP:Ljava/lang/String;

.field public MAC:Ljava/lang/String;

.field public connectedTime:J

.field public device:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 181
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",IP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",connectedTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
