.class public Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCallStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V
    .registers 3

    .line 1061
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 1062
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    .line 1069
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 1070
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1071
    :try_start_f
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1073
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_2f

    const-wide/16 v1, 0x0

    goto :goto_31

    :cond_2f
    const-wide/16 v1, 0x3e8

    :goto_31
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1076
    monitor-exit p2

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    :goto_39
    return-void
.end method
