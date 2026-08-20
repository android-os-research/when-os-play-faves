.class Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;
.source "ImageSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    .line 267
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;-><init>()V

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

    .line 293
    .local p2, "sharingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_9

    .line 297
    :cond_19
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    .line 298
    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sharingId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 289
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .registers 14
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sharingId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 273
    .local v0, "ish_state":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 274
    .local v1, "ish_reason":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    if-ge v5, v3, :cond_21

    aget-object v6, v2, v5

    .line 275
    .local v6, "s":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    invoke-virtual {v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 276
    move-object v0, v6

    .line 274
    .end local v6    # "s":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 278
    :cond_21
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v2

    array-length v3, v2

    :goto_26
    if-ge v4, v3, :cond_3c

    aget-object v5, v2, v4

    .line 279
    .local v5, "r":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    invoke-virtual {v5}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 280
    move-object v1, v5

    .line 278
    .end local v5    # "r":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 282
    :cond_3c
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;)V

    .line 283
    return-void
.end method
