.class public Lcom/android/server/powerstats/BatteryTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/BatteryTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/BatteryTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/BatteryTrigger;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_2a

    :cond_10
    const-string/jumbo p1, "level"

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 44
    iget-object p2, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    invoke-static {p2}, Lcom/android/server/powerstats/BatteryTrigger;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/powerstats/BatteryTrigger;)I

    move-result p2

    if-ge p1, p2, :cond_25

    .line 46
    iget-object p2, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    invoke-virtual {p2, v0}, Lcom/android/server/powerstats/PowerStatsLogTrigger;->logPowerStatsData(I)V

    .line 49
    :cond_25
    iget-object p0, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    invoke-static {p0, p1}, Lcom/android/server/powerstats/BatteryTrigger;->-$$Nest$fputmBatteryLevel(Lcom/android/server/powerstats/BatteryTrigger;I)V

    :goto_2a
    return-void
.end method
