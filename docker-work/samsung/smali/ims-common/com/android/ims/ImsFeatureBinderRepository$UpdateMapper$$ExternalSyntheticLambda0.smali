.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;

    check-cast p1, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsFeatureBinderRepository$UpdateMapper;->lambda$removeFeatureContainer$1$com-android-ims-ImsFeatureBinderRepository$UpdateMapper(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;)V

    return-void
.end method
