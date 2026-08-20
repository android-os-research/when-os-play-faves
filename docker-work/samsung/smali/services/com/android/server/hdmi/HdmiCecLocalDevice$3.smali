.class public Lcom/android/server/hdmi/HdmiCecLocalDevice$3;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;->queryAvcSupport(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 1057
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 2

    if-nez p1, :cond_b

    .line 1061
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    :cond_b
    return-void
.end method
