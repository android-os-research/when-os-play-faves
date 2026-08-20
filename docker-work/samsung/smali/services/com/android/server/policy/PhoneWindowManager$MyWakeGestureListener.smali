.class public Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/server/policy/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 875
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 876
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .registers 12

    .line 881
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 882
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshouldEnableWakeGestureLp(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 883
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Wake Up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 885
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmAllowTheaterModeWakeFromWakeGesture(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "android.policy:GESTURE"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 888
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p0
.end method
