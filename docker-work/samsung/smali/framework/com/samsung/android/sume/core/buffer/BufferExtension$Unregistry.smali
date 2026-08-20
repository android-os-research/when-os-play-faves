.class public Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unregistry"
.end annotation


# instance fields
.field private final blacklist loggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist releases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist transforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transforms:Ljava/util/List;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->releases:Ljava/util/List;

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->loggers:Ljava/util/List;

    .line 464
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension$1;

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist removeLogger(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    .line 477
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->loggers:Ljava/util/List;

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    return-object p0
.end method

.method public blacklist removeRelease(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    .line 467
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->releases:Ljava/util/List;

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-object p0
.end method

.method public blacklist removeTransform(Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    .line 472
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transforms:Ljava/util/List;

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$800(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-object p0
.end method

.method public blacklist unregister()V
    .registers 3

    .line 482
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transforms:Ljava/util/List;

    .line 483
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->loggers:Ljava/util/List;

    .line 484
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1000(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->releases:Ljava/util/List;

    .line 485
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterRelease(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1100(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 486
    return-void
.end method
