.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;
.super Landroid/database/ContentObserver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 360
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAutoWifiEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 361
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    .line 362
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2c

    .line 363
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sem_auto_wifi_last_user_state"

    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 366
    :cond_2c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    .line 367
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiBigdataLoggingStart(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V

    goto :goto_42

    .line 369
    :cond_3c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    :goto_42
    return-void
.end method
