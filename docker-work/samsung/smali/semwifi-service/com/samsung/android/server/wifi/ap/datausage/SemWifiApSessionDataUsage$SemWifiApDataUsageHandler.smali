.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;
.super Landroid/os/Handler;
.source "SemWifiApSessionDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemWifiApDataUsageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Landroid/os/Looper;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 330
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 331
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    packed-switch p1, :pswitch_data_134

    goto/16 :goto_132

    .line 333
    :pswitch_c
    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.sec.mhs.smartmhswidget"

    const-string v3, "com.sec.mhs.smartmhswidget.ManageMobileHotspotWidget"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 335
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$sfgetMHSDBG()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    .line 336
    array-length v2, p1

    move v4, v3

    :goto_2c
    if-ge v4, v2, :cond_49

    aget v5, p1, v4

    const-string v6, "SemWifiApSessionDataUsage"

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling update to widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_49
    if-eqz p1, :cond_6d

    .line 340
    array-length v2, p1

    if-eqz v2, :cond_6d

    .line 341
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 342
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetIds"

    .line 343
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "com.sec.mhs.smartmhswidget"

    const-string v4, "com.sec.mhs.smartmhswidget.ManageMobileHotspotWidget"

    .line 344
    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    :cond_6d
    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.sec.mhs.smartmhswidget"

    const-string v4, "com.sec.mhs.smartmhswidget.DashboardMobileHotspotWidget"

    invoke-direct {p1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 350
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$sfgetMHSDBG()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 351
    array-length v2, p1

    :goto_8b
    if-ge v3, v2, :cond_a8

    aget v4, p1, v3

    const-string v5, "SemWifiApSessionDataUsage"

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling update to widget2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_a8
    if-eqz p1, :cond_cc

    .line 355
    array-length v2, p1

    if-eqz v2, :cond_cc

    .line 356
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 357
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "appWidgetIds"

    .line 358
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "com.sec.mhs.smartmhswidget"

    const-string v3, "com.sec.mhs.smartmhswidget.DashboardMobileHotspotWidget"

    .line 359
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_cc
    const/16 p1, 0x67

    .line 362
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_132

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Z

    move-result v2

    if-eqz v2, :cond_132

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmSemWifiApEbf(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getConnectedStaCount()I

    move-result v2

    if-lez v2, :cond_132

    .line 363
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_132

    .line 382
    :pswitch_ec
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$mdateChanged(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    goto :goto_132

    .line 375
    :pswitch_f2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmSemWifiApEbf(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getConnectedStaCount()I

    move-result p1

    if-lez p1, :cond_10a

    .line 376
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$msaveTodayDetailsInDB(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    const-string p1, "SemWifiApSessionDataUsage"

    const-string v0, "Details saved in DB"

    .line 377
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_10a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$mstartDbSaveOperation(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    goto :goto_132

    .line 367
    :pswitch_110
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmSemWifiApEbf(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getConnectedStaCount()I

    move-result p1

    if-lez p1, :cond_132

    .line 368
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmEventLock(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 369
    :try_start_123
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$mupdateDataUsageOfAllClients(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V

    .line 370
    monitor-exit p1
    :try_end_129
    .catchall {:try_start_123 .. :try_end_129} :catchall_12f

    .line 371
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$msetNextEbpfPollingTimer(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;J)V

    goto :goto_132

    :catchall_12f
    move-exception p0

    .line 370
    :try_start_130
    monitor-exit p1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p0

    :cond_132
    :goto_132
    return-void

    nop

    :pswitch_data_134
    .packed-switch 0x64
        :pswitch_110
        :pswitch_f2
        :pswitch_ec
        :pswitch_c
    .end packed-switch
.end method
