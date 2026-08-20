.class public Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerHandler"
.end annotation


# static fields
.field public static final HARDWARE_DEVICE_ADDED:I = 0x2

.field public static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field public static final HDMI_DEVICE_ADDED:I = 0x4

.field public static final HDMI_DEVICE_REMOVED:I = 0x5

.field public static final HDMI_DEVICE_UPDATED:I = 0x6

.field public static final STATE_CHANGED:I = 0x1

.field public static final TVINPUT_INFO_ADDED:I = 0x7


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .line 1210
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_fe

    .line 1288
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fd

    .line 1263
    :pswitch_1f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1264
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 1267
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    .line 1268
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v3

    .line 1269
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHardwareInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_fd

    .line 1272
    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5e

    .line 1273
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v1

    if-eq v3, v1, :cond_fd

    .line 1274
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object p0

    .line 1275
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 1274
    invoke-virtual {p0, v4, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1275
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_fd

    :cond_5e
    if-nez v2, :cond_62

    move v1, v4

    goto :goto_63

    :cond_62
    move v1, v5

    .line 1279
    :goto_63
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    if-nez v2, :cond_6b

    move v2, v4

    goto :goto_6c

    :cond_6b
    move v2, v5

    :goto_6c
    if-eq v1, v2, :cond_fd

    .line 1280
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object p0

    .line 1281
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 1280
    invoke-virtual {p0, v4, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1281
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_fd

    .line 1249
    :pswitch_81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1251
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1252
    :try_start_8c
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHdmiInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1253
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_b3

    if-eqz v1, :cond_a9

    .line 1255
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_fd

    .line 1257
    :cond_a9
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    :catchall_b3
    move-exception p0

    .line 1253
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p0

    .line 1244
    :pswitch_b6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1245
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_fd

    .line 1239
    :pswitch_c4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1240
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_fd

    .line 1234
    :pswitch_d2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1235
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_fd

    .line 1229
    :pswitch_e0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1230
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_fd

    .line 1223
    :pswitch_ee
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1224
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1225
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    :cond_fd
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e0
        :pswitch_d2
        :pswitch_c4
        :pswitch_b6
        :pswitch_81
        :pswitch_1f
    .end packed-switch
.end method
