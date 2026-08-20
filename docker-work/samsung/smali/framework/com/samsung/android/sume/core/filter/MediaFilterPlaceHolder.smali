.class public Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;
.super Ljava/lang/Object;
.source "MediaFilterPlaceHolder.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

.field private blacklist mediaFilterProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mediaFilterRetriever:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

.field private final blacklist mediaFilterUpdaterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Ljava/util/function/Supplier;)V
    .registers 4
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "mediaFilterProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterProvider:Ljava/util/function/Supplier;

    .line 32
    return-void
.end method

.method static synthetic blacklist lambda$reset$0(Lcom/samsung/android/sume/core/filter/MediaFilter;Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "mediaFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p1, "it"    # Ljava/util/function/Consumer;

    .line 73
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 4
    .param p1, "retriever"    # Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;
    .param p2, "parent"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterRetriever:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->parent:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 60
    return-void
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 3
    .param p1, "instance"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->put(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

.method public blacklist reset()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterProvider:Ljava/util/function/Supplier;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "duplicated replace call"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 73
    .local v0, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterRetriever:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    if-eqz v1, :cond_35

    .line 75
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterRetriever:Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    .line 77
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->parent:Ljava/lang/ref/WeakReference;

    .line 79
    :cond_35
    return-object v0
.end method

.method public bridge synthetic blacklist reset()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->reset()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MediaFilterPlaceHolder not support this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMediaFilterUpdater(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "mediaFilterUpdater":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MediaFilterPlaceHolder not support this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
