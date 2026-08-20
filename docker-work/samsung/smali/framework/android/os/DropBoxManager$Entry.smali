.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 265
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-eqz p1, :cond_12

    .line 132
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 133
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 135
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 137
    return-void

    .line 130
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_38

    .line 177
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 181
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 182
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 184
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 185
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 186
    return-void

    .line 178
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/io/File;I)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Ljava/io/File;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    if-eqz p1, :cond_34

    .line 195
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1b

    .line 197
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 198
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 200
    const/high16 v0, 0x10000000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 201
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 202
    return-void

    .line 195
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "text"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_23

    .line 143
    if-eqz p4, :cond_1a

    .line 145
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 146
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 147
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 150
    return-void

    .line 143
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J[BI)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # [B
    .param p5, "flags"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-eqz p1, :cond_38

    .line 159
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 163
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 164
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 165
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 167
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 168
    return-void

    .line 160
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 207
    :cond_9
    :goto_9
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_c

    .line 255
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "is":Ljava/io/InputStream;
    goto :goto_17

    .line 256
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_c
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2a

    .line 257
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 261
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_17
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    .line 262
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_29

    :cond_28
    move-object v1, v0

    .line 261
    :goto_29
    return-object v1

    .line 259
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText(I)Ljava/lang/String;
    .registers 9
    .param p1, "maxBytes"    # I

    .line 230
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 231
    :cond_8
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    new-instance v1, Ljava/lang/String;

    array-length v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 233
    :cond_18
    const/4 v0, 0x0

    .line 235
    .local v0, "is":Ljava/io/InputStream;
    :try_start_19
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_51
    .catchall {:try_start_19 .. :try_end_1d} :catchall_48

    move-object v0, v3

    .line 236
    if-nez v0, :cond_28

    .line 247
    if-eqz v0, :cond_27

    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-exception v2

    .line 236
    :cond_27
    :goto_27
    return-object v1

    .line 237
    :cond_28
    :try_start_28
    new-array v3, p1, [B

    .line 238
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 239
    .local v4, "readBytes":I
    const/4 v5, 0x0

    .line 240
    .local v5, "n":I
    :goto_2c
    if-ltz v5, :cond_3b

    add-int v6, v4, v5

    move v4, v6

    if-ge v6, p1, :cond_3b

    .line 241
    sub-int v6, p1, v4

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    goto :goto_2c

    .line 243
    :cond_3b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_40} :catch_51
    .catchall {:try_start_28 .. :try_end_40} :catchall_48

    .line 247
    if-eqz v0, :cond_47

    :try_start_42
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_47

    :catch_46
    move-exception v1

    .line 243
    :cond_47
    :goto_47
    return-object v6

    .line 247
    .end local v3    # "buf":[B
    .end local v4    # "readBytes":I
    .end local v5    # "n":I
    :catchall_48
    move-exception v1

    if-eqz v0, :cond_50

    :try_start_4b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v2

    .line 248
    :cond_50
    :goto_50
    throw v1

    .line 244
    :catch_51
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 247
    if-eqz v0, :cond_5a

    :try_start_55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v3

    .line 245
    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public whitelist getTimeMillis()J
    .registers 3

    .line 216
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    .line 288
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 291
    :cond_1b
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 294
    :goto_27
    return-void
.end method
