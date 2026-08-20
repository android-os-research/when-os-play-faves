.class public Lcom/android/server/BatteryService$24;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$batteryDeterioration:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V
    .registers 4

    .line 2810
    iput-object p1, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    iput p2, p0, Lcom/android/server/BatteryService$24;->val$batteryDeterioration:I

    iput-object p3, p0, Lcom/android/server/BatteryService$24;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2813
    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$fputmIsFirstIntentSended(Lcom/android/server/BatteryService;Z)V

    .line 2814
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$24;->val$batteryDeterioration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    iget-object p0, p0, Lcom/android/server/BatteryService$24;->val$intent:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method
