.class public final synthetic Lcom/android/ims/FeatureConnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/FeatureConnector;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/FeatureConnector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/FeatureConnector$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/ims/FeatureConnector$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->lambda$connect$0$com-android-ims-FeatureConnector()V

    return-void
.end method
