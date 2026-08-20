.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;
.super Ljava/lang/Object;
.source "DumpArchiveInputStream.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;->this$0:Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 140
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    check-cast p2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;->compare(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)I
    .registers 3

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getOriginalName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getOriginalName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_1a

    .line 147
    :cond_d
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getOriginalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const p0, 0x7fffffff

    return p0
.end method
