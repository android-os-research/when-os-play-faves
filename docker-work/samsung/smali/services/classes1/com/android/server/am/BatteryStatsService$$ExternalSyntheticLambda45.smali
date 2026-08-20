.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$1:I

    iget p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$vZkrAeTsdwOe6MnA2j5VRG_G4wQ(Lcom/android/server/am/BatteryStatsService;II)V

    return-void
.end method
