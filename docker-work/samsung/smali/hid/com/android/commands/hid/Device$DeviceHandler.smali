.class Lcom/android/commands/hid/Device$DeviceHandler;
.super Landroid/os/Handler;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# instance fields
.field private mBarrierToken:I

.field private mPtr:J

.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method public constructor <init>(Lcom/android/commands/hid/Device;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 121
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_96

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown device message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_f
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_22

    .line 150
    invoke-static {v3, v4}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeCloseDevice(J)V

    .line 151
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 152
    iput-wide v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    goto :goto_29

    .line 154
    :cond_22
    const-string v0, "HidDevice"

    const-string v1, "Tried to close already closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_29
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmCond(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_30
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmCond(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 158
    monitor-exit v0

    .line 159
    goto :goto_94

    .line 158
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v1

    .line 142
    :pswitch_3e
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4e

    .line 143
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v3, v4, v0, v1}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeSendGetFeatureReportReply(JI[B)V

    goto :goto_94

    .line 145
    :cond_4e
    const-string v0, "HidDevice"

    const-string v1, "Tried to send feature report reply to closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_94

    .line 135
    :pswitch_56
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_64

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v3, v4, v0}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeSendReport(J[B)V

    goto :goto_94

    .line 138
    :cond_64
    const-string v0, "HidDevice"

    const-string v1, "Tried to send report to closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_94

    .line 129
    :pswitch_6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 130
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, [B

    new-instance v8, Lcom/android/commands/hid/Device$DeviceCallback;

    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device$DeviceCallback-IA;)V

    invoke-static/range {v2 .. v8}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeOpenDevice(Ljava/lang/String;IIII[BLcom/android/commands/hid/Device$DeviceCallback;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    .line 132
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->pauseEvents()V

    .line 133
    nop

    .line 163
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_56
        :pswitch_3e
        :pswitch_f
    .end packed-switch
.end method

.method public pauseEvents()V
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    .line 167
    return-void
.end method

.method public resumeEvents()V
    .registers 3

    .line 170
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    .line 172
    return-void
.end method
