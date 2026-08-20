.class public final Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController$BrightnessReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrightnessChange"
.end annotation


# instance fields
.field public final adjustedBrightness:I

.field public final modifier:I

.field public final synthetic this$1:Lcom/android/server/display/DisplayPowerController$BrightnessReason;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$BrightnessReason;IF)V
    .registers 4

    .line 4645
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->this$1:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4646
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->modifier:I

    .line 4648
    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->adjustedBrightness:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4653
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->this$1:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->modifier:I

    .line 4654
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->-$$Nest$mmodifierToString(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason$BrightnessChange;->adjustedBrightness:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, " -> %s[%d]"

    .line 4653
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
