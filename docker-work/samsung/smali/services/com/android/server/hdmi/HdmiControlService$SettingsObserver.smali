.class public Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3

    .line 911
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 912
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 918
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 919
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result p2

    .line 920
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_60

    :goto_16
    move v0, v2

    goto :goto_38

    :sswitch_18
    const-string/jumbo v0, "mhl_power_charge_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_16

    :cond_22
    const/4 v0, 0x2

    goto :goto_38

    :sswitch_24
    const-string/jumbo v1, "mhl_input_switching_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_16

    :sswitch_2e
    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_16

    :cond_37
    const/4 v0, 0x0

    :cond_38
    :goto_38
    packed-switch v0, :pswitch_data_6e

    goto :goto_5f

    .line 925
    :pswitch_3c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object p0

    const/16 p1, 0x66

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$smtoInt(Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_5f

    .line 922
    :pswitch_4c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    goto :goto_5f

    .line 928
    :pswitch_52
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 929
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$msetDisplayName(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    :goto_5f
    return-void

    :sswitch_data_60
    .sparse-switch
        -0x5bf9652c -> :sswitch_2e
        -0x4b40ad13 -> :sswitch_24
        -0x34cb9782 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4c
        :pswitch_3c
    .end packed-switch
.end method
