.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "SemWifi.Continuity"

    const-string v0, "received data from nearby device"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastReceivedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V

    .line 179
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->parseJson(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 180
    instance-of v0, p2, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/16 v1, 0x22

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1c

    :cond_38
    return-void
.end method
