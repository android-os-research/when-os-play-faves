.class public Lcom/android/server/hdmi/HdmiControlService$BinderService$15;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVendorCommand(II[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$deviceType:I

.field public final synthetic val$hasVendorId:Z

.field public final synthetic val$params:[B

.field public final synthetic val$targetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .registers 6

    .line 2265
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2268
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    if-nez v0, :cond_18

    const-string p0, "HdmiControlService"

    const-string v0, "Local device not available"

    .line 2270
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2273
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    if-eqz v1, :cond_3c

    .line 2274
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2275
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2276
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    .line 2274
    invoke-static {v0, v2, v3, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_53

    .line 2278
    :cond_3c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2279
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    .line 2278
    invoke-static {v0, v2, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_53
    return-void
.end method
