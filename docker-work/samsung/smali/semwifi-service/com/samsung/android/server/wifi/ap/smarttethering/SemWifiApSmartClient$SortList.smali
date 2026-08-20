.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;
.super Ljava/lang/Object;
.source "SemWifiApSmartClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I
    .registers 6

    .line 652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$mgetRssiRoundOffValue(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result v0

    .line 653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$mgetRssiRoundOffValue(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result p0

    const-string v1, ")"

    if-le v0, p0, :cond_35

    .line 656
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare() - bleRSSI1 > bleRSSI2, ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_35
    if-ge v0, p0, :cond_5c

    .line 659
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare() - bleRSSI1 < bleRSSI2, ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 662
    :cond_5c
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare() - m1.mSSID < m2.mSSID, ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is compared with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 649
    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient$SortList;->compare(Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result p0

    return p0
.end method
