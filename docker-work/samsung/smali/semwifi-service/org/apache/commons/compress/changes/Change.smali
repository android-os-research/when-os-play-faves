.class Lorg/apache/commons/compress/changes/Change;
.super Ljava/lang/Object;
.source "Change.java"


# static fields
.field static final TYPE_ADD:I = 0x2

.field static final TYPE_DELETE:I = 0x1

.field static final TYPE_DELETE_DIR:I = 0x4

.field static final TYPE_MOVE:I = 0x3


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field private final input:Ljava/io/InputStream;

.field private final replaceMode:Z

.field private final targetFile:Ljava/lang/String;

.field private final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 54
    iput p2, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    .line 56
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    .line 70
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 71
    iput-object p2, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    const/4 p1, 0x2

    .line 72
    iput p1, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    .line 73
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void

    .line 68
    :cond_14
    throw v0
.end method


# virtual methods
.method getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1

    .line 78
    iget-object p0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object p0
.end method

.method getInput()Ljava/io/InputStream;
    .registers 1

    .line 82
    iget-object p0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    return-object p0
.end method

.method isReplaceMode()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return p0
.end method

.method targetFile()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    return-object p0
.end method

.method type()I
    .registers 1

    .line 90
    iget p0, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    return p0
.end method
