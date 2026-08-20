.class public final synthetic Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/UceController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/UceController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda4;->f$0:Lcom/android/ims/rcs/uce/UceController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda4;->f$0:Lcom/android/ims/rcs/uce/UceController;

    check-cast p1, Lcom/android/ims/SomeArgs;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/UceController;->lambda$handleCachedCapabilityEvent$4$com-android-ims-rcs-uce-UceController(Lcom/android/ims/SomeArgs;)V

    return-void
.end method
