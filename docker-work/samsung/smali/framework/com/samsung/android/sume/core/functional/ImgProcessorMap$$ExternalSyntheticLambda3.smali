.class public final synthetic Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/functional/ImgProcessorMap;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/functional/ImgProcessorMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->lambda$config$2$com-samsung-android-sume-core-functional-ImgProcessorMap(Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;)V

    return-void
.end method
