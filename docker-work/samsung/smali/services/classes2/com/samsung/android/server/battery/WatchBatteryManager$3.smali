.class public Lcom/samsung/android/server/battery/WatchBatteryManager$3;
.super Ljava/lang/Object;
.source "WatchBatteryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

.field public final synthetic val$syncData:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V
    .registers 3

    .line 380
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$3;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iput p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$3;->val$syncData:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string/jumbo v0, "requestBatteryDataSync : "

    const-string v1, "WatchBatteryManager"

    .line 384
    :try_start_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "sync_battery_data"

    .line 385
    iget v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$3;->val$syncData:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$3;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetAUTHORITY_URI_LIST(Lcom/samsung/android/server/battery/WatchBatteryManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$3;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v5}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sync_request"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "result"

    .line 391
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_69} :catch_80
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_69} :catch_6a

    goto :goto_1c

    :catch_6a
    move-exception p0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catch_80
    move-exception p0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestBatteryDataSync - IllegalStateException : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    return-void
.end method
