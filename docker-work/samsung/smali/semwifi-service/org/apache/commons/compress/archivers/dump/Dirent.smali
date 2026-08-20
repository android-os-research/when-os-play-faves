.class Lorg/apache/commons/compress/archivers/dump/Dirent;
.super Ljava/lang/Object;
.source "Dirent.java"


# instance fields
.field private final ino:I

.field private final name:Ljava/lang/String;

.field private final parentIno:I

.field private final type:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    .line 40
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    .line 41
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    .line 42
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getIno()I
    .registers 1

    .line 50
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    return p0
.end method

.method getName()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-object p0
.end method

.method getParentIno()I
    .registers 1

    .line 58
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    return p0
.end method

.method getType()I
    .registers 1

    .line 66
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "[%d]: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
