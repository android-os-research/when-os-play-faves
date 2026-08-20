.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/SemModemActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$1:Landroid/os/SemModemActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$1:Landroid/os/SemModemActivityInfo;

    invoke-static {v0, p0}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$3gMRYNV9K_XXqD6bUuennSUa730(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V

    return-void
.end method
