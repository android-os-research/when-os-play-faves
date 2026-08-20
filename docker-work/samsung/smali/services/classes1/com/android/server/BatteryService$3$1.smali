.class public Lcom/android/server/BatteryService$3$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$3;

.field public final synthetic val$otgEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$3;Z)V
    .registers 3

    .line 676
    iput-object p1, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$3$1;->val$otgEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 679
    iget-object v0, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    iget-object v0, v0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$3$1;->val$otgEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setOTGEnableDisable(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 680
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set otgEnable as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$3$1;->val$otgEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    iget-object p0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$msendOTGIntentLocked(Lcom/android/server/BatteryService;)V

    goto :goto_38

    .line 683
    :cond_2f
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fail to set otgEnable"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method
