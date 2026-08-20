.class Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;
.super Ljava/lang/Object;
.source "MotionRecognitionReactiveAlert.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartAlertSemContextListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 169
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 171
    .local v0, "semContext":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_a

    .line 172
    return-void

    .line 175
    :cond_a
    const-string v1, "MotionRecognitionService"

    const-string v2, "onSemContextChanged(): MOVEMENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;

    move-result-object v1

    .line 178
    .local v1, "semContextMovement":Lcom/samsung/android/hardware/context/SemContextMovement;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextMovement;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 179
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$SmartAlertSemContextListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    .line 181
    :cond_23
    return-void
.end method
