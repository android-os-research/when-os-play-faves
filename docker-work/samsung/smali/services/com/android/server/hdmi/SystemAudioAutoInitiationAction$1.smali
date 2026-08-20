.class public Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;
.super Ljava/lang/Object;
.source "SystemAudioAutoInitiationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 2

    if-eqz p1, :cond_7

    .line 63
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-static {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->-$$Nest$mhandleSystemAudioModeStatusTimeout(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    :cond_7
    return-void
.end method
