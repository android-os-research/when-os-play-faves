.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;
.super Ljava/lang/Object;
.source "HdrDisplayNitMapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .registers 2
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    .line 477
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 493
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 480
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 481
    .local v0, "lightSensorData":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1a

    .line 482
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 484
    :cond_1a
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_44

    .line 485
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug.hdr.light.value"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On sensor changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdrSolution_HdrDisplayNitMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_44
    return-void
.end method
