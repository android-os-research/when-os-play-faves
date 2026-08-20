.class Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;
.super Ljava/lang/ThreadLocal;
.source "ParallelScatterZipCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 1

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;->initialValue()Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .registers 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->-$$Nest$fgetbackingStoreSupplier(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->-$$Nest$mcreateDeferred(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object v0

    .line 87
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->-$$Nest$fgetstreams(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
