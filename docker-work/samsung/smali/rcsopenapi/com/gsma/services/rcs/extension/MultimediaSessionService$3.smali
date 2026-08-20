.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;
.super Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
.source "MultimediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/extension/MultimediaSessionService;->addEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 365
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    iput-object p2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

    .line 377
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 371
    return-void
.end method
