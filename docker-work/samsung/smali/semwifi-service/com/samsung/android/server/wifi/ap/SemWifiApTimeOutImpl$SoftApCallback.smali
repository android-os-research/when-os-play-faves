.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;
.super Ljava/lang/Object;
.source "SemWifiApTimeOutImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .registers 4

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStateChanged:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiApTimeOutImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_36

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_30

    goto :goto_36

    .line 138
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    goto :goto_41

    .line 134
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    :goto_41
    return-void
.end method
