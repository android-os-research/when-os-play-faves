.class public Lcom/android/server/hdmi/HdmiControlService$10;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 2838
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$10;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$10;->val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2842
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$10;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2844
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$10;->val$listener:Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$10;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecVolumeControl(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_32

    :catchall_13
    move-exception p0

    goto :goto_34

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "HdmiControlService"

    .line 2846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report HdmiControlVolumeControlStatusChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$10;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecVolumeControl(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2849
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_13

    throw p0
.end method
