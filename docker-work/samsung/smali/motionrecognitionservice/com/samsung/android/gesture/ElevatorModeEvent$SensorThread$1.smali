.class Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread$1;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    .line 205
    iput-object p1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread$1;->this$1:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread$1;->this$1:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/ElevatorModeEvent;->-$$Nest$mElevatorDetectNotifier(Lcom/samsung/android/gesture/ElevatorModeEvent;)Z

    .line 209
    return-void
.end method
