.class public Lcom/samsung/android/server/battery/SpenBatteryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SpenBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/SpenBatteryManager;->onUserUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;


# direct methods
.method public static synthetic $r8$lambda$DW_Yxx6r5w6Btuj4XCcMskARgYk(Lcom/samsung/android/server/battery/SpenBatteryManager$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "SpenBatteryManager"

    const-string/jumbo v1, "unbind spen service"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    iget-object v2, v2, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_33

    :catch_1e
    move-exception v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_33
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fputmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;Z)V

    .line 328
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mremoveSpenBatteryInfos(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "SpenBatteryManager"

    .line 312
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 315
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mhandleNicknameChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    goto :goto_73

    :cond_28
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo p2, "user switched"

    .line 318
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmServiceConnectHandler(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/server/battery/SpenBatteryManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager$2;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mbindSpenService(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    goto :goto_73

    :cond_4a
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 332
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    const-string/jumbo p2, "user unlocked"

    .line 333
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mbindSpenService(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_73

    :catch_5e
    move-exception p0

    .line 337
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    :goto_73
    return-void
.end method
