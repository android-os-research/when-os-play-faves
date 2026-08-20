.class Lcom/android/commands/uinput/Device$DeviceHandler;
.super Landroid/os/Handler;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# instance fields
.field private mBarrierToken:I

.field private mPtr:J

.field final synthetic this$0:Lcom/android/commands/uinput/Device;


# direct methods
.method constructor <init>(Lcom/android/commands/uinput/Device;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 135
    iput-object p1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_8c

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown device message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_f
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_8a

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 151
    .local v0, "events":[I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1a
    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-ge v2, v3, :cond_31

    .line 152
    iget-wide v2, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    aget v4, v0, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v1, 0x2

    aget v6, v0, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeInjectEvent(JIII)V

    .line 151
    add-int/lit8 v1, v1, 0x3

    goto :goto_1a

    .line 154
    .end local v0    # "events":[I
    .end local v1    # "pos":I
    :cond_31
    goto :goto_8a

    .line 157
    :pswitch_32
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_45

    .line 158
    invoke-static {v3, v4}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeCloseUinputDevice(J)V

    .line 159
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 160
    iput-wide v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    goto :goto_4c

    .line 162
    :cond_45
    const-string v0, "UinputDevice"

    const-string v1, "Tried to close already closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_4c
    const-string v0, "UinputDevice"

    const-string v1, "Device closed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_5a
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 167
    monitor-exit v0

    .line 168
    goto :goto_8a

    .line 167
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_65

    throw v1

    .line 143
    :pswitch_68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 144
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    new-instance v8, Lcom/android/commands/uinput/Device$DeviceCallback;

    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/android/commands/uinput/Device$DeviceCallback;-><init>(Lcom/android/commands/uinput/Device;Lcom/android/commands/uinput/Device$DeviceCallback-IA;)V

    invoke-static/range {v2 .. v8}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeOpenUinputDevice(Ljava/lang/String;IIIIILcom/android/commands/uinput/Device$DeviceCallback;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    .line 147
    nop

    .line 172
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_32
        :pswitch_f
    .end packed-switch
.end method

.method public pauseEvents()V
    .registers 2

    .line 175
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    .line 176
    return-void
.end method

.method public resumeEvents()V
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    .line 181
    return-void
.end method
