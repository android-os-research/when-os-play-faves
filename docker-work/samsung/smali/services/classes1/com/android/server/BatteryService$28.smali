.class public Lcom/android/server/BatteryService$28;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .registers 3

    .line 2899
    iput-object p1, p0, Lcom/android/server/BatteryService$28;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2902
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tx_event:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$28;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSehHealthInfo(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object v2

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    iget-object v0, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 2905
    iget-object p0, p0, Lcom/android/server/BatteryService$28;->val$intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 2906
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetPACKAGE_DEVICE_CARE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2907
    invoke-static {p0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method
