.class public Lcom/android/server/BatteryService$4$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$4;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$4;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$4;

    iget-object v0, v0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->setHiccupDisable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 701
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 703
    :cond_15
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_1e
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$4;

    iget-object p0, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$fputmIsHiccupPopupShowing(Lcom/android/server/BatteryService;Z)V

    return-void
.end method
