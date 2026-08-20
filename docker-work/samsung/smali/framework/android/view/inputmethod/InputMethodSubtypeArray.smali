.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile greylist-max-o mCompressedData:[B

.field private final greylist-max-o mCount:I

.field private volatile greylist-max-o mDecompressedSize:I

.field private volatile greylist-max-o mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final greylist-max-o mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 72
    if-lez v0, :cond_1e

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 76
    :cond_1e
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 55
    if-nez p1, :cond_10

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 57
    return-void

    .line 59
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 60
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 61
    return-void
.end method

.method private static greylist-max-o compress([B)[B
    .registers 5
    .param p0, "data"    # [B

    .line 203
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2f

    .line 204
    .local v0, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_25

    .line 205
    .local v1, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 206
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 208
    :try_start_14
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_25

    :try_start_17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2f

    .line 207
    return-object v2

    .line 203
    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "data":[B
    :goto_24
    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .end local v1    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "data":[B
    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "data":[B
    :goto_2e
    throw v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 208
    .end local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "data":[B
    :catch_2f
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputMethodSubtypeArray"

    const-string v2, "Failed to compress the data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o decompress([BI)[B
    .registers 9
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .line 215
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_42

    .line 216
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_38

    .line 217
    .local v2, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_b
    new-array v3, p1, [B

    .line 218
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 219
    .local v4, "totalReadBytes":I
    :goto_e
    array-length v5, v3

    if-ge v4, v5, :cond_1c

    .line 220
    array-length v5, v3

    sub-int/2addr v5, v4

    .line 221
    .local v5, "restBytes":I
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_2e

    .line 222
    .local v6, "readBytes":I
    if-gez v6, :cond_1a

    .line 223
    goto :goto_1c

    .line 225
    :cond_1a
    add-int/2addr v4, v6

    .line 226
    .end local v5    # "restBytes":I
    .end local v6    # "readBytes":I
    goto :goto_e

    .line 227
    :cond_1c
    :goto_1c
    if-eq p1, v4, :cond_26

    .line 228
    nop

    .line 231
    :try_start_1f
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_38

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_42

    .line 228
    return-object v0

    .line 230
    :cond_26
    nop

    .line 231
    :try_start_27
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_38

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_42

    .line 230
    return-object v3

    .line 215
    .end local v3    # "result":[B
    .end local v4    # "totalReadBytes":I
    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v4

    :try_start_34
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "data":[B
    .end local p1    # "expectedSize":I
    :goto_37
    throw v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .end local v2    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "data":[B
    .restart local p1    # "expectedSize":I
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "data":[B
    .end local p1    # "expectedSize":I
    :goto_41
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_42

    .line 231
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "data":[B
    .restart local p1    # "expectedSize":I
    :catch_42
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Failed to decompress the data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return-object v0
.end method

.method private static greylist-max-o marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .registers 3
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 180
    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    const/4 v0, 0x0

    .line 178
    :cond_14
    return-object v1

    .line 180
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_1c

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    const/4 v0, 0x0

    .line 184
    :cond_1c
    throw v1
.end method

.method private static greylist-max-o unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4
    .param p0, "data"    # [B

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 191
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    .line 195
    if-eqz v0, :cond_1c

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    const/4 v0, 0x0

    .line 193
    :cond_1c
    return-object v1

    .line 195
    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_24

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_24
    throw v1
.end method


# virtual methods
.method public greylist-max-o get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 7
    .param p1, "index"    # I

    .line 133
    if-ltz p1, :cond_3e

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-le v0, p1, :cond_3e

    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 137
    .local v0, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v0, :cond_3b

    .line 138
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v2

    .line 140
    if-nez v0, :cond_36

    .line 141
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 142
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v2

    .line 144
    .local v2, "decompressedData":[B
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 145
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 146
    if-eqz v2, :cond_28

    .line 147
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    move-object v0, v3

    goto :goto_34

    .line 149
    :cond_28
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v3, v3, [Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v3

    .line 152
    :goto_34
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 154
    .end local v2    # "decompressedData":[B
    :cond_36
    monitor-exit v1

    goto :goto_3b

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_38

    throw v2

    .line 156
    :cond_3b
    :goto_3b
    aget-object v1, v0, p1

    return-object v1

    .line 134
    .end local v0    # "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getCount()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 88
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gtz v0, :cond_8

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void

    .line 93
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 94
    .local v0, "compressedData":[B
    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 95
    .local v1, "decompressedSize":I
    if-nez v0, :cond_3e

    if-nez v1, :cond_3e

    .line 96
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_13
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    move-object v0, v3

    .line 98
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    move v1, v3

    .line 99
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    .line 100
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v3

    .line 101
    .local v3, "decompressedData":[B
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v4

    move-object v0, v4

    .line 102
    if-nez v0, :cond_33

    .line 103
    const/4 v1, -0x1

    .line 104
    const-string v4, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 106
    :cond_33
    array-length v4, v3

    move v1, v4

    .line 108
    :goto_35
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 109
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 111
    .end local v3    # "decompressedData":[B
    :cond_39
    monitor-exit v2

    goto :goto_3e

    :catchall_3b
    move-exception v3

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3b

    throw v3

    .line 114
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_4e

    if-lez v1, :cond_4e

    .line 115
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_59

    .line 119
    :cond_4e
    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Unexpected state. Behaving as an empty array."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_59
    return-void
.end method
