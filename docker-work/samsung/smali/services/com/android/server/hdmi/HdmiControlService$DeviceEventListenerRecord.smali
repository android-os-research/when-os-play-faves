.class public final Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceEventListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 3

    .line 1736
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1742
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1743
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDeviceEventListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1744
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
