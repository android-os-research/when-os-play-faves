.class Lorg/apache/commons/compress/archivers/examples/Expander$5;
.super Ljava/lang/Object;
.source "Expander.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

.field final synthetic val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$5;->this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Expander$5;->val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextReadableEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/examples/Expander$5;->val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object p0

    return-object p0
.end method
