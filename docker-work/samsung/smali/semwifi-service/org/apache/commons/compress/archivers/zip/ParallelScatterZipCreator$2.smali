.class Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;
.super Ljava/lang/Object;
.source "ParallelScatterZipCreator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

.field final synthetic val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V
    .registers 3

    .line 188
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->-$$Nest$fgettlScatterStreams(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    const/4 p0, 0x0

    return-object p0
.end method
