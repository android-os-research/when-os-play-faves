.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/ImsManager;

    iput-object p2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->lambda$getRegistrationTech$5$com-android-ims-ImsManager(Ljava/util/function/Consumer;)V

    return-void
.end method
