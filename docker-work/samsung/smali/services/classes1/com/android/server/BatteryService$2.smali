.class public Lcom/android/server/BatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


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

    .line 659
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 661
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    .line 662
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x0

    const-string/jumbo p1, "state"

    .line 663
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "/sys/class/power_supply/battery/batt_slate_mode"

    .line 664
    invoke-static {p1, p0}, Lcom/android/server/BatteryService;->-$$Nest$smfileWriteInt(Ljava/lang/String;I)V

    :cond_19
    return-void
.end method
