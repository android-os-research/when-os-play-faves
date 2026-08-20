.class public Lcom/android/server/blob/BlobMetadata$Accessor;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Accessor"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 937
    iput p2, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 949
    instance-of v2, p1, Lcom/android/server/blob/BlobMetadata$Accessor;

    if-nez v2, :cond_c

    goto :goto_21

    .line 952
    :cond_c
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 953
    iget v2, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    iget v3, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v2, v3, :cond_1f

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public equals(Ljava/lang/String;I)Z
    .registers 4

    .line 941
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p2, :cond_e

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 958
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
