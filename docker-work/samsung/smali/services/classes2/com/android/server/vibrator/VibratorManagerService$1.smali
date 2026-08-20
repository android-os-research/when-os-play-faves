.class public Lcom/android/server/vibrator/VibratorManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 190
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_13
    const-string/jumbo v0, "reason"

    const/4 v1, -0x1

    .line 193
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x13

    if-ne p2, v0, :cond_28

    const-string p0, "VibratorManagerService"

    const-string p2, "Keep screen turned off"

    .line 195
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit p1

    return-void

    .line 201
    :cond_28
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->ignoreCancellingCurrentRingVibration(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 202
    monitor-exit p1

    return-void

    .line 208
    :cond_36
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 209
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearNextVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 211
    :cond_49
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 212
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p2

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 214
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 215
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object p0

    const-string p2, "cancel"

    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 218
    :cond_74
    monitor-exit p1

    goto :goto_79

    :catchall_76
    move-exception p0

    monitor-exit p1
    :try_end_78
    .catchall {:try_start_13 .. :try_end_78} :catchall_76

    throw p0

    :cond_79
    :goto_79
    return-void
.end method
