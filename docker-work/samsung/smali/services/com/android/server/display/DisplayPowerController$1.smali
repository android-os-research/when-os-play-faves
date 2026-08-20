.class public Lcom/android/server/display/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 856
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReduceBrightColorsActivationChanged(ZZ)V
    .registers 6

    .line 862
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraDim onReduceBrightColorsActivationChanged activated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userInitiated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmExtraDimIsActive(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 866
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public onReduceBrightColorsStrengthChanged(I)V
    .registers 5

    .line 873
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmExtraDimStrength(Lcom/android/server/display/DisplayPowerController;I)V

    .line 874
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraDim strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method
