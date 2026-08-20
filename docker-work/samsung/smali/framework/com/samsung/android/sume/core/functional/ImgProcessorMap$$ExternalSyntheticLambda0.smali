.class public final synthetic Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

.field public final synthetic blacklist f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object p3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->lambda$process$0(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/Map;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V

    return-void
.end method
