.class public Lcom/android/server/BatteryService$5$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$5;

.field public final synthetic val$wirelssPowerSharingEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$5;Z)V
    .registers 3

    .line 762
    iput-object p1, p0, Lcom/android/server/BatteryService$5$1;->this$1:Lcom/android/server/BatteryService$5;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$5$1;->val$wirelssPowerSharingEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 765
    iget-object v0, p0, Lcom/android/server/BatteryService$5$1;->this$1:Lcom/android/server/BatteryService$5;

    iget-object v0, v0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$5$1;->val$wirelssPowerSharingEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharing(Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 766
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set wirelssPowerSharingEnable as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/BatteryService$5$1;->val$wirelssPowerSharingEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 768
    :cond_28
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fail to disable wirelssPowerSharingEnable"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method
