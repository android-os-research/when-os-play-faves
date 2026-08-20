.class public Lcom/android/server/hdmi/SendKeyAction$1;
.super Ljava/lang/Object;
.source "SendKeyAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SendKeyAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SendKeyAction;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/hdmi/SendKeyAction$1;->this$0:Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "AVR did not respond to <User Control Pressed>"

    .line 162
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object p0, p0, Lcom/android/server/hdmi/SendKeyAction$1;->this$0:Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    :cond_15
    return-void
.end method
