.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;
.super Ljava/lang/Object;
.source "SemWifiApContinuityClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "McfMHSInfo"
.end annotation


# instance fields
.field public clientMAC:Ljava/lang/String;

.field public mhs_bssid:Ljava/lang/String;

.field public state:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 6

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    .line 271
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 272
    iput p5, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientMAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mhs_bssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
