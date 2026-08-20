.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V
    .registers 20

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    move v1, p2

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:I

    move v1, p3

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:I

    move v1, p4

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$3:I

    move v1, p5

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$4:I

    move v1, p6

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$5:I

    move v1, p7

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$6:I

    move v1, p8

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$7:I

    move v1, p9

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$8:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$9:J

    move v1, p12

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$10:I

    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$11:I

    move/from16 v1, p14

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$12:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$13:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$14:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:I

    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:I

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$3:I

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$4:I

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$5:I

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$6:I

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$7:I

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$8:I

    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$9:J

    iget v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$10:I

    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$11:I

    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$12:I

    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$13:I

    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$14:Z

    move/from16 v16, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-wide v9, v10

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$3IeU-Rm38YgGkCBVQ5PGZjdAMsQ(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V

    return-void
.end method
