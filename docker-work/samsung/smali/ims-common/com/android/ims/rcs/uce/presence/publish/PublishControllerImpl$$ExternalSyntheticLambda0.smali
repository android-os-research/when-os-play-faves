.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    check-cast p1, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->lambda$handlePublishStateChangedMessage$2$com-android-ims-rcs-uce-presence-publish-PublishControllerImpl(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    return-void
.end method
