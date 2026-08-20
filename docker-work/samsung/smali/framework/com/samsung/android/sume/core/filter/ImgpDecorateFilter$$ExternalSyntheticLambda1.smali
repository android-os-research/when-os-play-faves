.class public final synthetic Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->lambda$run$7(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Z

    move-result p1

    return p1
.end method
