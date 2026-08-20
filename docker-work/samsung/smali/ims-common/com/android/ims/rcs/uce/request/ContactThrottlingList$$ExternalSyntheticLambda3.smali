.class public final synthetic Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/ContactThrottlingList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->lambda$getInThrottlingListUris$3$com-android-ims-rcs-uce-request-ContactThrottlingList(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
