.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager;IILjava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/ims/ImsManager;

    iput p2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    iget-object v0, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/ims/ImsManager;

    iget v1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;->f$3:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/ImsManager;->lambda$isSupported$0$com-android-ims-ImsManager(IILjava/util/function/Consumer;)V

    return-void
.end method
