.class Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;
.super Ljava/lang/Object;
.source "SemDeviceStateMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemDeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoldStateListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minit(Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->init()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V

    return-void
.end method

.method private blacklist init()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const-string v1, "FoldStateListener init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmFoldStateListener(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 205
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const/16 v0, 0x66

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist onLidStateChanged(JI)V
    .registers 4

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_7

    goto :goto_8

    :cond_7
    move p2, p1

    :goto_8
    const/16 p3, 0x66

    invoke-virtual {p0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
