.class Lorg/apache/commons/compress/archivers/examples/Archiver$6;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

.field final synthetic val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$6;->this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$6;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$6;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finish()V

    return-void
.end method
