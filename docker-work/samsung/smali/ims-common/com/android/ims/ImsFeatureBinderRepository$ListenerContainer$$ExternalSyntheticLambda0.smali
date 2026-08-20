.class public final synthetic Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    iput p2, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;

    iget v1, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsFeatureBinderRepository$ListenerContainer;->lambda$notifyStateChanged$2$com-android-ims-ImsFeatureBinderRepository$ListenerContainer(II)V

    return-void
.end method
