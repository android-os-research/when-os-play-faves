.class public Lcom/android/server/BatteryService$6$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$6;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$6;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 785
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dex Start"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object p0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    iget-object p0, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x2

    invoke-static {p0, v0, v0}, Lcom/android/server/BatteryService;->-$$Nest$msetWirelessPowerSharingExternelEventInternal(Lcom/android/server/BatteryService;II)V

    return-void
.end method
