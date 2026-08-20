.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    return-void
.end method


# virtual methods
.method public final elapsedTimeMillis()J
    .registers 3

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->$r8$lambda$xSRSDRjb2XyV3pV5kQ1P6wlzofI(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)J

    move-result-wide v0

    return-wide v0
.end method
