.class public Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessDynamicRampRatePair"
.end annotation


# instance fields
.field public brightnessRampRateDynamic:F

.field public brightnessRampRateDynamicAtHbm:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 5604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5605
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 5606
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    return-void
.end method
