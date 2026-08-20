.class Lorg/apache/commons/compress/compressors/CompressorStreamFactory$1;
.super Ljava/lang/Object;
.source "CompressorStreamFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->findAvailableCompressorInputStreamProviders()Ljava/util/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/SortedMap<",
        "Ljava/lang/String;",
        "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 1

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$1;->run()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 252
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->-$$Nest$sfgetSINGLETON()Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->-$$Nest$sfgetSINGLETON()Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    .line 253
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->-$$Nest$smfindCompressorStreamProviders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    .line 254
    invoke-interface {v1}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    goto :goto_1c

    :cond_30
    return-object p0
.end method
