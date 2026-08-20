.class public Lcom/android/server/hdmi/HdmiControlService$8;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field public final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field public final synthetic val$finished:[I

.field public final synthetic val$initiatedBy:I

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .registers 7

    .line 1033
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$finished:[I

    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne p2, v1, :cond_21

    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to allocate address:[device_type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 1043
    :cond_21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1045
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v2

    .line 1043
    invoke-static {v1, p2, p1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mcreateDeviceInfo(Lcom/android/server/hdmi/HdmiControlService;IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1046
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1047
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 1048
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    .line 1049
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    :goto_4b
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$finished:[I

    aget v1, p2, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p2, v0

    if-ne p1, v1, :cond_a9

    .line 1054
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1055
    iget p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6a

    .line 1059
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$monInitializeCecComplete(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1061
    :cond_6a
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    invoke-static {p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mnotifyAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    .line 1064
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8a

    .line 1065
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1066
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1068
    :cond_8a
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 1069
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1070
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1072
    :cond_a0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecMessageBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/CecMessageBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/CecMessageBuffer;->processMessages()V

    :cond_a9
    return-void
.end method
