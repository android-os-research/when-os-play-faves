.class public final synthetic Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/FeatureConnector$1;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/FeatureConnector$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/FeatureConnector$1;

    iput p2, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/FeatureConnector$1;

    iget v1, p0, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/ims/FeatureConnector$1;->lambda$imsFeatureRemoved$0$com-android-ims-FeatureConnector$1(I)V

    return-void
.end method
