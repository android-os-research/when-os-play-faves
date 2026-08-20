.class public Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataElement"
.end annotation


# static fields
.field public static final LENGTH_FIELD_WIDTH:I = 0x4

.field public static final MAX_DATA_ELEMENT_SIZE:I = 0x3e8


# instance fields
.field public mData:[B


# direct methods
.method public static bridge synthetic -$$Nest$mtoByteArray(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 77
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 78
    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    if-ne v2, v0, :cond_60

    .line 81
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-lez v0, :cond_49

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_49

    .line 84
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    .line 85
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, v0, :cond_2a

    return-void

    .line 88
    :cond_2a
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bytes read, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_49
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataElement size is invalid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_60
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not read 4 bytes ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    return-void
.end method

.method public synthetic constructor <init>([BLcom/android/server/powerstats/PowerStatsDataStorage$DataElement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    return-object p0
.end method

.method public final toByteArray()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    .line 62
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
