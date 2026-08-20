.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# instance fields
.field private final mId:I

.field private final mPayload:[B


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    .line 308
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->-$$Nest$smconvertToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/InformationElementParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 361
    :cond_4
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    iget v1, p0, Landroid/net/InformationElementParcelable;->id:I

    iget-object p0, p0, Landroid/net/InformationElementParcelable;->payload:[B

    .line 362
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 329
    :cond_4
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 330
    :cond_a
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    .line 331
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    iget v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public getId()I
    .registers 1

    .line 315
    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    return p0
.end method

.method public getPayload()Ljava/nio/ByteBuffer;
    .registers 1

    .line 323
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 336
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toStableParcelable()Landroid/net/InformationElementParcelable;
    .registers 3

    .line 348
    new-instance v0, Landroid/net/InformationElementParcelable;

    invoke-direct {v0}, Landroid/net/InformationElementParcelable;-><init>()V

    .line 349
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    iput v1, v0, Landroid/net/InformationElementParcelable;->id:I

    .line 350
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    if-eqz p0, :cond_14

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    iput-object p0, v0, Landroid/net/InformationElementParcelable;->payload:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->mPayload:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
