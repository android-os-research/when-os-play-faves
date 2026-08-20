.class public Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdmiMhlVendorCommandListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3

    .line 1662
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1668
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
