.class public Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;
.super Lcom/samsung/android/sume/core/filter/NNFWFilter;
.source "NNFWFilterGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterGroup;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

.field private blacklist modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V
    .registers 2
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;Ljava/util/List;)V
    .registers 6
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V

    .line 28
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "no model selector is given"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method static synthetic blacklist lambda$loadModel$1(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 4
    .param p0, "found"    # Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 41
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ModelSelector$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$loadModel$2(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)Ljava/lang/IllegalStateException;
    .registers 4
    .param p0, "found"    # Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no matched model with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .registers 6
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/functional/ModelSelector;->select(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object v0

    .line 39
    .local v0, "found":Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    sget-object v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/sume/core/functional/ModelSelector$Item;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V

    .line 41
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 44
    return-object v0
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    .line 87
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-object p0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .registers 3
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$prepare$3$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 5
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 50
    move-object v0, p1

    .line 51
    .local v0, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    instance-of v1, p1, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_c

    .line 52
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    .line 54
    :cond_c
    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v1, :cond_18

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    .line 57
    :cond_18
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

    .line 58
    return-void
.end method

.method public blacklist prepare()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    return-void
.end method

.method public varargs blacklist removeFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 4
    .param p1, "filters"    # [Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .registers 5
    .param p1, "orgFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p2, "newFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "idx":I
    if-gez v0, :cond_a

    .line 100
    const/4 v1, 0x0

    return v1

    .line 102
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 69
    .local v0, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 72
    :cond_18
    return-object v0
.end method

.method public blacklist runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "do not use this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
