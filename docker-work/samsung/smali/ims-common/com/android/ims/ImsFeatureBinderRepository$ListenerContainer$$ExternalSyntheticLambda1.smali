.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    invoke-virtual {v0}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyFeatureCreatedOrRemoved$0$com-android-ims-ImsFeatureBinderRepository$ListenerContainer()V

    return-void
.end method
