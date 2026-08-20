.class public Lcom/samsung/android/server/battery/SpenBatteryManager$3;
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
.method public constructor <init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$3;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "SpenBatteryManager"

    .line 352
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const-string p2, "aircommand package replaced"

    .line 357
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$3;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mbindSpenService(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_42

    :catch_2d
    move-exception p0

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method
