.class public final Lcom/android/server/powerstats/BatteryTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "BatteryTrigger.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BatteryTrigger"


# instance fields
.field public mBatteryLevel:I

.field public final mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/server/powerstats/BatteryTrigger;)I
    .registers 1

    iget p0, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryLevel(Lcom/android/server/powerstats/BatteryTrigger;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 37
    new-instance p2, Lcom/android/server/powerstats/BatteryTrigger$1;

    invoke-direct {p2, p0}, Lcom/android/server/powerstats/BatteryTrigger$1;-><init>(Lcom/android/server/powerstats/BatteryTrigger;)V

    iput-object p2, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p3, :cond_25

    .line 60
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo p3, "level"

    .line 62
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    :cond_25
    return-void
.end method
