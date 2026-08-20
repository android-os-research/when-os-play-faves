.class public Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "TO;",
        "Ljava/util/List<",
        "TO;>;[TO;>;"
    }
.end annotation


# static fields
.field private static final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$s1PoueMZ7kzelINTIqI11UshIrE(Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;Ljava/util/List;)[Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->lambda$finisher$1(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tuzaNJ424RGGy-rRxmY5_cBxxCc(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->lambda$combiner$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TO;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    return-void
.end method

.method private static synthetic lambda$combiner$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 90
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private synthetic lambda$finisher$1(Ljava/util/List;)[Ljava/lang/Object;
    .registers 3

    .line 99
    iget-object p0, p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 100
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "TO;>;TO;>;"
        }
    .end annotation

    .line 79
    new-instance p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda3;-><init>()V

    return-object p0
.end method

.method public characteristics()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-object p0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/util/List<",
            "TO;>;>;"
        }
    .end annotation

    .line 89
    new-instance p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public finisher()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "TO;>;[TO;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;)V

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TO;>;>;"
        }
    .end annotation

    .line 106
    new-instance p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method
