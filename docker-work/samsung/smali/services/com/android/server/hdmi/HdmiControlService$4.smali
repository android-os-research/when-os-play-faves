.class public Lcom/android/server/hdmi/HdmiControlService$4;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->initService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .registers 3

    .line 684
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "routing_control"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 687
    :goto_12
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 688
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    if-nez p1, :cond_2a

    const-string p0, "HdmiControlService"

    const-string p1, "Switch device has not registered yet. Can\'t turn routing on."

    .line 689
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 692
    :cond_2a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingControlFeatureEnabled(Z)V

    :cond_33
    :goto_33
    return-void
.end method
