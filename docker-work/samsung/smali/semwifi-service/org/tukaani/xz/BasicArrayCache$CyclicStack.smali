.class Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
.super Ljava/lang/Object;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CyclicStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/tukaani/xz/BasicArrayCache$CyclicStack-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 88
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0x1ff

    .line 89
    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 90
    monitor-exit p0

    return-object v2

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    iget v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x1ff

    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    .line 99
    iget-object v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    aput-object p1, v1, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 100
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
