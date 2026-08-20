.class public Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
.super Ljava/lang/Object;
.source "MFDescriptorGraph.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;,
        Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

.field private final blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;-><init>()V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda2;-><init>()V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    .line 37
    const-class v1, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/graph/Graph$Option;

    iput-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 39
    array-length v1, v0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_7e

    aget-object v3, v0, v2

    .line 40
    .local v3, "node":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    iget-object v4, v3, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    instance-of v4, v4, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v4, :cond_7b

    .line 41
    iget-object v4, v3, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    check-cast v4, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    .line 42
    .local v4, "nnDescriptor":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    sget-object v5, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "node: isKeepFilterDatatype "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->isKeepFilterDatatype()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "node: isMultipleInputOutput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->isBatchIO()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v3    # "node":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .end local v4    # "nnDescriptor":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 46
    :cond_7e
    return-void
.end method

.method private constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .registers 3
    .param p1, "nodes"    # [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .param p2, "option"    # Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;)V
    .registers 4
    .param p1, "x0"    # [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .param p2, "x1"    # Lcom/samsung/android/sume/core/graph/Graph$Option;
    .param p3, "x2"    # Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;-><init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .registers 2
    .param p0, "it"    # Landroid/os/Parcelable;

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .registers 2
    .param p0, "x$0"    # I

    .line 36
    new-array v0, p0, [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    return-object v0
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$2(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;)Landroid/util/Pair;
    .registers 4
    .param p0, "unitFactory"    # Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;
    .param p1, "it"    # Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    .line 67
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$3(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;Ljava/lang/Integer;)V
    .registers 10
    .param p0, "nodeList"    # Ljava/util/List;
    .param p1, "evaluatorMap"    # Ljava/util/Map;
    .param p2, "channelMapMap"    # Ljava/util/Map;
    .param p3, "builder"    # Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
    .param p4, "from"    # Lcom/samsung/android/sume/core/graph/GraphNode;
    .param p5, "idx"    # Ljava/lang/Integer;

    .line 81
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 83
    .local v0, "to":Lcom/samsung/android/sume/core/graph/GraphNode;, "Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "evaluator":Lcom/samsung/android/sume/core/evaluate/Evaluator;
    const/4 v2, 0x0

    .line 86
    .local v2, "channelType":I
    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 87
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 89
    :cond_1d
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 90
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    :cond_2d
    invoke-virtual {p3, p4, v0, v1, v2}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    .line 93
    return-void
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$4(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;Landroid/util/Pair;)V
    .registers 14
    .param p0, "builder"    # Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
    .param p1, "nodeList"    # Ljava/util/List;
    .param p2, "it"    # Landroid/util/Pair;

    .line 71
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v0, v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    .line 72
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v1, v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    .line 73
    .local v1, "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/sume/core/evaluate/Evaluator;>;"
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v8, v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    .line 75
    .local v8, "channelMapMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 77
    .local v9, "from":Lcom/samsung/android/sume/core/graph/GraphNode;, "Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 78
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/sume/core/graph/GraphNode;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode([Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    goto :goto_35

    .line 80
    :cond_27
    new-instance v10, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda0;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, p0

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;)V

    invoke-interface {v0, v10}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    :goto_35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOption()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-object v0
.end method

.method public blacklist toMediaFilterGraph(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)Lcom/samsung/android/sume/core/graph/Graph;
    .registers 5
    .param p1, "unitFactory"    # Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;",
            ")",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toMediaFilterGraph: option="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    .line 65
    .local v0, "builder":Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
    :try_start_22
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda3;-><init>()V

    .line 66
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 68
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 70
    .local v1, "nodeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;>;>;"
    new-instance v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_50} :catch_51

    .line 98
    .end local v1    # "nodeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/GraphNode<Lcom/samsung/android/sume/core/filter/MediaFilter;>;>;>;"
    goto :goto_55

    .line 96
    :catch_51
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_55
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->build()Lcom/samsung/android/sume/core/graph/Graph;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
