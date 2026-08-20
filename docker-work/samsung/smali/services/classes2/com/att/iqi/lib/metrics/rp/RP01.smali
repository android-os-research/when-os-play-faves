.class public Lcom/att/iqi/lib/metrics/rp/RP01;
.super Lcom/att/iqi/lib/Metric;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/rp/RP01;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public c:S

.field public d:S

.field public e:B

.field public f:B

.field public g:S

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP01"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP01$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP01$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP01;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_37

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    :cond_37
    return-void
.end method


# virtual methods
.method public getByteCount()S
    .registers 1

    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    return p0
.end method

.method public getDstPort()S
    .registers 1

    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    return p0
.end method

.method public getFlags()B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    return p0
.end method

.method public getPayloadType()B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    return p0
.end method

.method public getSequenceNum()S
    .registers 1

    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    return p0
.end method

.method public getSourceId()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    return p0
.end method

.method public getTimestamp()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->c:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->d:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->e:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->f:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->g:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->i:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
