.class public Lcom/samsung/android/camera/ShakeEventListener$1;
.super Ljava/lang/Object;
.source "ShakeEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/ShakeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/ShakeEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/ShakeEventListener;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener$1;->this$0:Lcom/samsung/android/camera/ShakeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 123
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener$1;->this$0:Lcom/samsung/android/camera/ShakeEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "ShakeEventListener"

    const-string v1, "Force shake off, possible sensor crash"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener$1;->this$0:Lcom/samsung/android/camera/ShakeEventListener;

    new-instance v7, Landroid/hardware/SensorEvent;

    iget-object p0, p0, Lcom/samsung/android/camera/ShakeEventListener$1;->this$0:Lcom/samsung/android/camera/ShakeEventListener;

    invoke-static {p0}, Lcom/samsung/android/camera/ShakeEventListener;->-$$Nest$fgetmShakeDetector(Lcom/samsung/android/camera/ShakeEventListener;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 p0, 0x1

    new-array v6, p0, [F

    const/4 p0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    aput v1, v6, p0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorEvent;-><init>(Landroid/hardware/Sensor;IJ[F)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/camera/ShakeEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_30
    return-void
.end method
