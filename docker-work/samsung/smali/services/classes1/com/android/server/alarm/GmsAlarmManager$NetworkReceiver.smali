.class public Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 429
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    const-string p1, "GmsAlarmManager"

    const-string v0, "CONNECTIVITY RECEIVER"

    .line 430
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    invoke-static {v0, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;Landroid/net/NetworkInfo;)V

    .line 433
    iget-object p2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_c9

    .line 434
    iget-object p2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const v0, 0x9d08

    .line 435
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  -- isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-eq p2, p1, :cond_76

    if-eq p2, v0, :cond_76

    if-eqz p2, :cond_76

    if-eq p2, v1, :cond_76

    const/16 p1, 0x10

    if-ne p2, p1, :cond_c9

    :cond_76
    if-ne p2, v1, :cond_9f

    .line 441
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 442
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_9f

    .line 444
    :cond_92
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 447
    :cond_9f
    :goto_9f
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_bd

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_bd

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_bd

    .line 448
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    return-void

    .line 451
    :cond_bd
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 452
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/16 p1, 0x2710

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    :cond_c9
    return-void
.end method
