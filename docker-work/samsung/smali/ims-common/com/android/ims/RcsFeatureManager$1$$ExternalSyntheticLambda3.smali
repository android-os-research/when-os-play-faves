.class public final synthetic Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/ims/RcsFeatureManager$1;->lambda$onPublishUpdated$2(ILjava/lang/String;ILjava/lang/String;Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    return-void
.end method
