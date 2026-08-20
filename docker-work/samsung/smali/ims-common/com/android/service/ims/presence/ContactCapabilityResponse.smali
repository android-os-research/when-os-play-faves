.class public interface abstract Lcom/android/service/ims/presence/ContactCapabilityResponse;
.super Ljava/lang/Object;
.source "ContactCapabilityResponse.java"


# virtual methods
.method public abstract blacklist onCapabilitiesUpdated(ILjava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract blacklist onError(II)V
.end method

.method public abstract blacklist onFinish(I)V
.end method

.method public abstract blacklist onSuccess(I)V
.end method

.method public abstract blacklist onTimeout(I)V
.end method
