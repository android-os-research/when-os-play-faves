.class public Lcom/android/server/input/InputManagerService$18;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 6049
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 6053
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x1

    .line 6055
    :goto_6
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    if-lez v2, :cond_2a

    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetmLowHysteresis()[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2a

    .line 6056
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingState(Lcom/android/server/input/InputManagerService;I)V

    move v0, v1

    goto :goto_6

    .line 6059
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4f

    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetmHighHysteresis()[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4f

    .line 6060
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingState(Lcom/android/server/input/InputManagerService;I)V

    move v0, v1

    goto :goto_2a

    :cond_4f
    if-eqz v0, :cond_85

    .line 6064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFoldingAngleListener: state changed, angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setFoldingState(I)V

    :cond_85
    return-void
.end method
