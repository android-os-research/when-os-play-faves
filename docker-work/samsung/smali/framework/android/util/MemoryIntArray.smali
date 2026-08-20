.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SIZE:I = 0x400

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mFd:I

.field private final greylist-max-o mIsOwner:Z

.field private final greylist-max-o mMemoryAddr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 241
    new-instance v0, Landroid/util/MemoryIntArray$1;

    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 71
    const/16 v1, 0x400

    if-gt p1, v1, :cond_2d

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 77
    invoke-direct {p0, v3, v1}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 78
    const-string v1, "MemoryIntArray.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 79
    return-void

    .line 72
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size is 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 83
    const-class v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 84
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2c

    .line 87
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    iput v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 88
    invoke-direct {p0, v3, v1}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 89
    const-string v1, "MemoryIntArray.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 90
    return-void

    .line 85
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No backing file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o enforceNotClosed()V
    .registers 3

    .line 208
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 211
    return-void

    .line 209
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a closed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o enforceValidIndex(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->size()I

    move-result v0

    .line 215
    .local v0, "size":I
    if-ltz p1, :cond_b

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_b

    .line 219
    return-void

    .line 216
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o enforceWritable()V
    .registers 3

    .line 222
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    return-void

    .line 223
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "array is not writable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getMaxSize()I
    .registers 1

    .line 238
    const/16 v0, 0x400

    return v0
.end method

.method private native greylist-max-o nativeClose(IJZ)V
.end method

.method private native greylist-max-o nativeCreate(Ljava/lang/String;I)I
.end method

.method private native greylist-max-o nativeGet(IJI)I
.end method

.method private native greylist-max-o nativeOpen(IZ)J
.end method

.method private native greylist-max-o nativeSet(IJII)V
.end method

.method private native greylist-max-o nativeSize(I)I
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 147
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-boolean v3, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 149
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 151
    :cond_17
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 190
    return v0

    .line 192
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 193
    return v1

    .line 195
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 196
    return v0

    .line 198
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/util/MemoryIntArray;

    .line 199
    .local v2, "other":Landroid/util/MemoryIntArray;
    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v4, v2, Landroid/util/MemoryIntArray;->mFd:I

    if-ne v3, v4, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 164
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 167
    :cond_7
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 170
    throw v0
.end method

.method public greylist-max-o get(I)I
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 109
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 110
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/util/MemoryIntArray;->nativeGet(IJI)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    return v0
.end method

.method public greylist-max-o isClosed()Z
    .registers 3

    .line 157
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isWritable()Z
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 97
    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    return v0
.end method

.method public greylist-max-o set(II)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 124
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    .line 125
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 126
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeSet(IJII)V

    .line 127
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 136
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-direct {p0, v0}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    :try_start_0
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_1c

    .line 181
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    .line 182
    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1c

    .line 184
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_e
    nop

    .line 185
    return-void

    .line 180
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/util/MemoryIntArray;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :cond_1b
    :goto_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_1c

    .line 182
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/util/MemoryIntArray;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catch_1c
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
