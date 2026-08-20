.class public Lcom/android/server/BatteryService$16;
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


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 2367
    iput-object p1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2371
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send intent to device care for showing menu"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.settings.ENABLE_WIRELESS_CHARGER_MENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 2373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2374
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetPACKAGE_DEVICE_CARE()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
