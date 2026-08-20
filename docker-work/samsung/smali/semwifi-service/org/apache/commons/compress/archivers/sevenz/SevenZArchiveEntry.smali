.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
.super Ljava/lang/Object;
.source "SevenZArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private accessDate:J

.field private compressedCrc:J

.field private compressedSize:J

.field private contentMethods:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private crc:J

.field private creationDate:J

.field private hasAccessDate:Z

.field private hasCrc:Z

.field private hasCreationDate:Z

.field private hasLastModifiedDate:Z

.field private hasStream:Z

.field private hasWindowsAttributes:Z

.field private isAntiItem:Z

.field private isDirectory:Z

.field private lastModifiedDate:J

.field private name:Ljava/lang/String;

.field private size:J

.field private windowsAttributes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static javaTimeToNtfsTime(Ljava/util/Date;)J
    .registers 9

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const-string v0, "GMT+0"

    .line 510
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 511
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 512
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 513
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static ntfsTimeToJavaTime(J)Ljava/util/Date;
    .registers 10

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const-string v0, "GMT+0"

    .line 496
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 497
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 498
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    .line 500
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public getAccessDate()Ljava/util/Date;
    .registers 3

    .line 254
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-eqz v0, :cond_b

    .line 255
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 257
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The entry doesn\'t have this timestamp"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getCompressedCrc()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    long-to-int p0, v0

    return p0
.end method

.method getCompressedCrcValue()J
    .registers 3

    .line 395
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    return-wide v0
.end method

.method getCompressedSize()J
    .registers 3

    .line 432
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    return-wide v0
.end method

.method public getContentMethods()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    return-object p0
.end method

.method public getCrc()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    long-to-int p0, v0

    return p0
.end method

.method public getCrcValue()J
    .registers 3

    .line 357
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    return-wide v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .registers 3

    .line 152
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-eqz v0, :cond_b

    .line 153
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 155
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The entry doesn\'t have this timestamp"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHasAccessDate()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    return p0
.end method

.method public getHasCrc()Z
    .registers 1

    .line 320
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    return p0
.end method

.method public getHasCreationDate()Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    return p0
.end method

.method public getHasLastModifiedDate()Z
    .registers 1

    .line 184
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    return p0
.end method

.method public getHasWindowsAttributes()Z
    .registers 1

    .line 286
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    return p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 3

    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-eqz v0, :cond_b

    .line 205
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->ntfsTimeToJavaTime(J)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 207
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The entry doesn\'t have this timestamp"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 414
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    return-wide v0
.end method

.method public getWindowsAttributes()I
    .registers 1

    .line 302
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    return p0
.end method

.method public hasStream()Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    return p0
.end method

.method public isAntiItem()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    return p0
.end method

.method public isDirectory()Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    return p0
.end method

.method public setAccessDate(J)V
    .registers 3

    .line 267
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    return-void
.end method

.method public setAccessDate(Ljava/util/Date;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 275
    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-eqz v0, :cond_f

    .line 277
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:J

    :cond_f
    return-void
.end method

.method public setAntiItem(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    return-void
.end method

.method setCompressedCrc(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 386
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    return-void
.end method

.method setCompressedCrcValue(J)V
    .registers 3

    .line 404
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    return-void
.end method

.method setCompressedSize(J)V
    .registers 3

    .line 441
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    return-void
.end method

.method public setContentMethods(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 460
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 461
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_b

    .line 464
    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    goto :goto_25

    :cond_22
    const/4 p1, 0x0

    .line 466
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    :goto_25
    return-void
.end method

.method public setCrc(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 348
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    return-void
.end method

.method public setCrcValue(J)V
    .registers 3

    .line 366
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    return-void
.end method

.method public setCreationDate(J)V
    .registers 3

    .line 165
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 173
    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-eqz v0, :cond_f

    .line 175
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:J

    :cond_f
    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    return-void
.end method

.method public setHasAccessDate(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    return-void
.end method

.method public setHasCrc(Z)V
    .registers 2

    .line 328
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    return-void
.end method

.method public setHasCreationDate(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    return-void
.end method

.method public setHasLastModifiedDate(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    return-void
.end method

.method public setHasStream(Z)V
    .registers 2

    .line 89
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    return-void
.end method

.method public setHasWindowsAttributes(Z)V
    .registers 2

    .line 294
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    return-void
.end method

.method public setLastModifiedDate(J)V
    .registers 3

    .line 217
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 225
    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-eqz v0, :cond_f

    .line 227
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:J

    :cond_f
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 423
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    return-void
.end method

.method public setWindowsAttributes(I)V
    .registers 2

    .line 310
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    return-void
.end method
