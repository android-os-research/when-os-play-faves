.class public Lcom/android/server/BatteryService$36;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
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

    .line 3561
    iput-object p1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3564
    iget-object v0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmFullCapacityEnable(Lcom/android/server/BatteryService;)Z

    move-result v0

    const-string v1, "/efs/Battery/batt_full_capacity"

    const-string v2, "/sys/class/power_supply/battery/batt_full_capacity"

    if-eqz v0, :cond_19

    const/16 v0, 0x55

    .line 3565
    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->-$$Nest$smfileWriteInt(Ljava/lang/String;I)V

    .line 3566
    iget-object p0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v2, 0x55

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_25

    :cond_19
    const/16 v0, 0x64

    .line 3568
    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->-$$Nest$smfileWriteInt(Ljava/lang/String;I)V

    .line 3569
    iget-object p0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v2, 0x64

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :goto_25
    return-void
.end method
