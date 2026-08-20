.class final Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
.super Landroid/os/Handler;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Looper;)V
    .registers 3

    .line 1098
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 1099
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private monitorWipsStatus()V
    .registers 5

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitorWipsStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMobileWipsFrameworkService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_35

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setWipsValue(I)I

    .line 1208
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->stopWipsService()V

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setWipsValue(I)I

    goto :goto_45

    .line 1210
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result v0

    if-ne v0, v2, :cond_45

    .line 1211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->stopWipsService()V

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setWipsValue(I)I

    .line 1214
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    .line 1215
    :cond_5a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mgetWipsPid(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_66

    .line 1217
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_66
    return-void
.end method

.method private removeBadge()V
    .registers 8

    .line 1292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 1293
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1295
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1296
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "seen_time=?"

    const-string v4, "0"

    .line 1298
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1300
    :try_start_30
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "seen_time"

    .line 1301
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1302
    invoke-virtual {p0, v0, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_30 .. :try_end_41} :catch_47
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_42

    goto :goto_5e

    :catch_42
    move-exception p0

    .line 1306
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    :catch_47
    move-exception p0

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error removeBadge() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemMobileWipsFrameworkService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void
.end method

.method private sendSavedData()V
    .registers 2

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1226
    :try_start_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyL3Connected(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 1228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

.method private declared-synchronized startWipsService()V
    .registers 6

    monitor-enter p0

    .line 1234
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1235
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.server.wifi.mobilewips"

    const-string v3, "com.samsung.android.server.wifi.mobilewips.SemMobileWipsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "start"

    .line 1236
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "version"

    const/4 v2, 0x1

    .line 1237
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mobileWipsDefault"

    .line 1239
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_DisableDefaultMWIPS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_30

    move v3, v4

    goto :goto_31

    :cond_30
    move v3, v2

    .line 1238
    :goto_31
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "bigdataEnabled"

    .line 1241
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_8a

    .line 1244
    :try_start_39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v1

    if-nez v1, :cond_69

    .line 1245
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const-string v0, "SemMobileWipsFrameworkService"

    const-string v1, "startSemMobileWipsService started"

    .line 1247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :cond_69
    const-string v0, "SemMobileWipsFrameworkService"

    const-string v1, "startSemMobileWipsService aleady binded"

    .line 1249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_70} :catch_71
    .catchall {:try_start_39 .. :try_end_70} :catchall_8a

    goto :goto_88

    :catch_71
    move-exception v0

    :try_start_72
    const-string v1, "SemMobileWipsFrameworkService"

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSemMobileWipsService failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_8a

    .line 1254
    :goto_88
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopWipsService()V
    .registers 5

    monitor-enter p0

    .line 1257
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->stop()V

    .line 1260
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->stop()V

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    if-eqz v0, :cond_7f

    const-string v0, "SemMobileWipsFrameworkService"

    const-string v1, "request unbind service"

    .line 1263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_94

    .line 1266
    :try_start_2a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->unregisterCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->unregisterPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/wifi/ISemMobileWipsService;)V

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1275
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.server.wifi.mobilewips"

    const-string v3, "com.samsung.android.server.wifi.mobilewips.SemMobileWipsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1276
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 1279
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->removeBadge()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_7a} :catch_7b
    .catchall {:try_start_2a .. :try_end_7a} :catchall_94

    goto :goto_7f

    :catch_7b
    move-exception v0

    .line 1281
    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1286
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_92

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setWipsValue(I)I
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_94

    .line 1289
    :cond_92
    monitor-exit p0

    return-void

    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 1104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_51

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_23

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1b

    goto :goto_56

    .line 1109
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->stopWipsService()V

    goto :goto_56

    .line 1106
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->startWipsService()V

    goto :goto_56

    .line 1115
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->stop()V

    goto :goto_56

    .line 1121
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->stop()V

    goto :goto_56

    .line 1126
    :cond_4d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->monitorWipsStatus()V

    goto :goto_56

    .line 1112
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V

    .line 1132
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 1133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsValue()I

    move-result p0

    if-ne p0, v2, :cond_7e

    .line 1134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unbinded can not send "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMobileWipsFrameworkService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return-void

    .line 1150
    :cond_7f
    :try_start_7f
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_81} :catch_119

    const/16 v1, 0x13

    if-eq v0, v1, :cond_10f

    const/16 v1, 0x14

    if-eq v0, v1, :cond_10f

    const/16 v1, 0x18

    if-eq v0, v1, :cond_10f

    const/16 v1, 0x23

    if-eq v0, v1, :cond_10f

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x3eb

    const-string v2, "iface"

    if-eq v0, v1, :cond_c5

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_a7

    packed-switch v0, :pswitch_data_11e

    packed-switch v0, :pswitch_data_12a

    goto/16 :goto_11d

    .line 1183
    :cond_a7
    :try_start_a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_11d

    .line 1184
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 1185
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abortReason"

    .line 1186
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->broadcastBcnEventAbort(Ljava/lang/String;I)V

    goto :goto_11d

    .line 1166
    :cond_c5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 1167
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_11d

    .line 1168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 1169
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ssid"

    .line 1170
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "bssid"

    .line 1171
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1174
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    const-string v0, "beaconInterval"

    .line 1175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "timestamp"

    .line 1176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v0, "systemtime"

    .line 1177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v3

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/wifi/ISemMobileWipsService;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    goto :goto_11d

    .line 1191
    :cond_10b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->sendSavedData()V

    goto :goto_11d

    .line 1163
    :cond_10f
    :pswitch_10f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->sendMessage(Landroid/os/Message;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_118} :catch_119

    goto :goto_11d

    :catch_119
    move-exception p0

    .line 1197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11d
    :goto_11d
    return-void

    :pswitch_data_11e
    .packed-switch 0x7
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0xe
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
    .end packed-switch
.end method
