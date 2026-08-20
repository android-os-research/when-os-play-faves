.class public Lcom/android/server/display/exynos/ExynosDisplayATC$3;
.super Ljava/lang/Object;
.source "ExynosDisplayATC.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/exynos/ExynosDisplayATC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 472
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mrecordSensorEvent(Lcom/android/server/display/exynos/ExynosDisplayATC;Landroid/hardware/SensorEvent;)V

    .line 474
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_e

    .line 475
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mprintSensorDeque(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 477
    :cond_e
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 480
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mcaculateLuminance(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 482
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mloadLuminanceATCTable(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 484
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mgetQueDelay(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result v1

    if-lez v1, :cond_41

    .line 487
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fputmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V

    if-ge v3, v1, :cond_34

    return-void

    .line 491
    :cond_34
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result v2

    if-lt v2, v1, :cond_41

    .line 492
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fputmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V

    .line 495
    :cond_41
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$msendMessage(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 497
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_4f

    .line 498
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$msetBrightnessAdjustment(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V

    :cond_4f
    return-void
.end method
