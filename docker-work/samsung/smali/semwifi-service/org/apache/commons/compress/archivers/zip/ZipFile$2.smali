.class Lorg/apache/commons/compress/archivers/zip/ZipFile$2;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .registers 2

    .line 1214
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1214
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I
    .registers 9

    const/4 p0, 0x0

    if-ne p1, p2, :cond_4

    return p0

    .line 1221
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    goto :goto_d

    :cond_c
    move-object p1, v1

    .line 1222
    :goto_d
    instance-of v0, p2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-eqz v0, :cond_14

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    :cond_14
    const/4 p2, 0x1

    if-nez p1, :cond_18

    return p2

    :cond_18
    const/4 v0, -0x1

    if-nez v1, :cond_1c

    return v0

    .line 1229
    :cond_1c
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v2

    .line 1230
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2c

    goto :goto_31

    :cond_2c
    if-gez p1, :cond_30

    move p0, v0

    goto :goto_31

    :cond_30
    move p0, p2

    :goto_31
    return p0
.end method
