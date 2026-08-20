.class Landroid/telecom/InCallService$2;
.super Landroid/telecom/Phone$Listener;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/InCallService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    .line 465
    iput-object p1, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .line 469
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 470
    return-void
.end method

.method public whitelist onBringToForeground(Landroid/telecom/Phone;Z)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "showDialpad"    # Z

    .line 479
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onBringToForeground(Z)V

    .line 480
    return-void
.end method

.method public whitelist onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .line 485
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    .line 486
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 473
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 474
    return-void
.end method

.method public whitelist onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .line 491
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    .line 492
    return-void
.end method

.method public whitelist onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .registers 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "canAddCall"    # Z

    .line 497
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCanAddCallChanged(Z)V

    .line 498
    return-void
.end method

.method public whitelist onSilenceRinger(Landroid/telecom/Phone;)V
    .registers 3
    .param p1, "phone"    # Landroid/telecom/Phone;

    .line 503
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->onSilenceRinger()V

    .line 504
    return-void
.end method
