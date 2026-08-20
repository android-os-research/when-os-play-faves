.class Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage: unhandled message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_22

    .line 152
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_50

    .line 150
    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Phone;

    iput-object p1, v0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: phone="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    :goto_50
    const/4 p0, 0x1

    return p0
.end method
