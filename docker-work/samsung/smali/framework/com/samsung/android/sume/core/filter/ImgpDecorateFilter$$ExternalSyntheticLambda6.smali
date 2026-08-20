.class public final synthetic Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->lambda$run$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object p1

    return-object p1
.end method
