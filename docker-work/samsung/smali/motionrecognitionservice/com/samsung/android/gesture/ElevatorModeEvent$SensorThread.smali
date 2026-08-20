.class Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;
.super Ljava/lang/Thread;
.source "ElevatorModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ElevatorModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/ElevatorModeEvent;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/ElevatorModeEvent;Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;-><init>(Lcom/samsung/android/gesture/ElevatorModeEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 204
    const-string v0, "Elevator Detector Thread End"

    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 205
    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/ElevatorModeEvent;->-$$Nest$fgethandler(Lcom/samsung/android/gesture/ElevatorModeEvent;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread$1;-><init>(Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1f} :catch_2d
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    goto :goto_2

    .line 216
    :catchall_20
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    throw v1

    .line 213
    :catch_2d
    move-exception v1

    .line 216
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    nop

    .line 218
    return-void
.end method
