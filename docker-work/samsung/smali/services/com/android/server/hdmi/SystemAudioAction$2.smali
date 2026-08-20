.class public Lcom/android/server/hdmi/SystemAudioAction$2;
.super Ljava/lang/Object;
.source "SystemAudioAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SystemAudioAction;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4

    if-eqz p1, :cond_24

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send <System Audio Mode Request>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 97
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_24
    return-void
.end method
