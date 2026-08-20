.class public Lcom/android/server/hdmi/HdmiControlService$17;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->changeInputForMhl(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$lastInput:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 3763
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$17;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$17;->val$lastInput:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3769
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$17;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$17;->val$lastInput:I

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method
