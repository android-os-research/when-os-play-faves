.class public Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 249
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo p1, "online"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmBatteryOnlineStatus(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    return-void

    .line 253
    :cond_1a
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.pen.INSERT"

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "onReceive : air action is disabled. Turn off the charging"

    const-string v4, "action"

    const/4 v5, 0x0

    if-eqz v1, :cond_14e

    .line 256
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    :cond_45
    const-string/jumbo p1, "penInsert"

    .line 260
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "isBoot"

    .line 261
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 262
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "penInsert : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ".isBoot : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mgetTopMostPackage(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_80

    .line 265
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_81

    :cond_80
    move-object v6, v2

    .line 267
    :goto_81
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v7

    if-eqz v7, :cond_c6

    if-nez v0, :cond_91

    if-eqz p1, :cond_c6

    .line 268
    :cond_91
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 269
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_c6

    .line 271
    :cond_ab
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/BleSpenManager;->disableCharging()V

    .line 273
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_c6
    :goto_c6
    if-eqz p1, :cond_f3

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 280
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_e4

    .line 281
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0, v7, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mcalculateSpenUsingDuration(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 283
    :cond_e4
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0, v11, v12}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 284
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetUSE_APP_FEATURE_NAME_SPAT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v6, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendLogSpenInsertInfo(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 287
    :cond_f3
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 288
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetUSE_APP_FEATURE_NAME_SPEN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v6, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendLogSpenInsertInfo(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_105
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/Boolean;)V

    .line 295
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Start AirCommand. #1"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_12b

    .line 300
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :cond_12b
    const-string/jumbo p2, "topComponent"

    .line 299
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBatteryOnlineStatus(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result p2

    const-string v0, "batteryStatus"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    iget-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result p2

    const-string v0, "coverOpened"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mstartAirCommandService(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    goto/16 :goto_24c

    :cond_14e
    const-string v1, "com.sec.android.intent.action.BLACK_MEMO"

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v6, "state"

    if-eqz v1, :cond_16b

    .line 307
    :try_start_159
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15d} :catch_15d

    .line 311
    :catch_15d
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo p1, "show"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmAcIsScreenOffMemoShowing(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    goto/16 :goto_24c

    :cond_16b
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_19f

    .line 313
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p0

    if-eqz p0, :cond_24c

    .line 314
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 315
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.service.aircommand.remotespen.action.COMMON_BROADCAST"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isEnabled"

    .line 317
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetPACKAGE_NAME_AIRCOMMAND()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_24c

    :cond_19f
    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_202

    .line 322
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onReceive : User switched"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p1

    if-eqz p1, :cond_24c

    .line 324
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1f9

    .line 325
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1dd

    .line 326
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_24c

    .line 328
    :cond_1dd
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/smartclip/BleSpenManager;->disableCharging()V

    .line 330
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_24c

    .line 333
    :cond_1f9
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onReceive : SPen insertion state is not detected yet"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24c

    :cond_202
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24c

    .line 337
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmBootComplete(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    .line 338
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$misSupportSpen(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result p1

    if-nez p1, :cond_220

    .line 339
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onReceive : This model is not support S pen"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_220
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/smartclip/SpenGarageSpecManager;->isBundledSpenSupported()Z

    move-result p1

    if-eqz p1, :cond_233

    .line 343
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onReceive : This model is bundle pen provided model"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_233
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$misDigitizerEnabled(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_24c

    .line 348
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onReceive : isDigitizerEnabled = false"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mwriteDigitizerOnOffCommand(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    :cond_24c
    :goto_24c
    return-void
.end method
