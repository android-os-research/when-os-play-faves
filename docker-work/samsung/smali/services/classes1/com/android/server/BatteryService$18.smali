.class public Lcom/android/server/BatteryService$18;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$statusIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .registers 3

    .line 2422
    iput-object p1, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$18;->val$statusIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2425
    iget-object v0, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$18;->val$statusIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2428
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_COMMON_ConfigImplicitBroadcasts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2429
    iget-object v0, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$18;->val$statusIntent:Landroid/content/Intent;

    const-string v2, "com.verizon.mips.services"

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2434
    :cond_2c
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SUPPORTED_DAILY_BOARD()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2435
    iget-object v0, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$18;->val$statusIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.homemode"

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2440
    :cond_3f
    iget-object v0, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$mgetDeviceSecurityPackageName(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 2442
    iget-object v1, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/BatteryService$18;->val$statusIntent:Landroid/content/Intent;

    invoke-static {v1, p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_52
    return-void
.end method
