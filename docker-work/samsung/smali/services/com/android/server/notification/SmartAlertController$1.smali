.class public Lcom/android/server/notification/SmartAlertController$1;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public static synthetic $r8$lambda$DhMUm2aMCArmPgTGdxMjSUqKzww(Lcom/android/server/notification/SmartAlertController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/SmartAlertController$1;->lambda$onMotionEvent$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMotionEvent$0()V
    .registers 8

    .line 95
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmInCall(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    if-eqz v0, :cond_10

    const-string p0, "SmartAlert - inCall, vibration will be returned"

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_10
    const-string v0, "SmartAlert - vibrate"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmVibrator(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;

    move-result-object v1

    const/16 v2, 0x3e8

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmPickUpVibratePattern(Lcom/android/server/notification/SmartAlertController;)[J

    move-result-object p0

    const/4 v0, -0x1

    .line 101
    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v4

    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v0, 0x31

    .line 102
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v6

    const-string v3, "android"

    const-string v5, "SmartAlertController"

    .line 99
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_43
    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 5

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result p1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_9

    goto :goto_2a

    :cond_9
    const-string p1, "SmartAlertController"

    const-string v0, "SmartAlert - SemMotionRecognitionEvent.SMART_ALERT"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmWakeLock(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Lcom/android/server/notification/SmartAlertController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/SmartAlertController$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2a
    return-void
.end method
