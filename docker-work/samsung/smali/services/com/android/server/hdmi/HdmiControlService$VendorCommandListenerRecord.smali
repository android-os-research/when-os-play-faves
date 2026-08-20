.class public Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
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
    name = "VendorCommandListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field public final mVendorId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorId(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mVendorId:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4

    .line 1767
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 1769
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mVendorId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1775
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1776
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
