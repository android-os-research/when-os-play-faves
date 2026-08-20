.class Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;
.source "VideoSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 252
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    .local p2, "sharingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    .local v0, "deleteSharingIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    .local v2, "sharingid":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v2    # "sharingid":Ljava/lang/String;
    goto :goto_9

    .line 265
    :cond_19
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    .line 266
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sharingId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V

    .line 257
    return-void
.end method
