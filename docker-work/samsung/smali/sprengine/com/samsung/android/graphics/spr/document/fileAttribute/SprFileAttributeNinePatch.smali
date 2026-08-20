.class public Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;
.super Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
.source "SprFileAttributeNinePatch.java"


# instance fields
.field public xEnd:[F

.field public xSize:I

.field public xStart:[F

.field public yEnd:[F

.field public ySize:I

.field public yStart:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;-><init>(B)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    .line 9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    .line 10
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    .line 12
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    .line 13
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 4
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;-><init>(B)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    .line 9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    .line 10
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    .line 12
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    .line 13
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 22
    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 5
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    .line 29
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    .line 30
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    .line 31
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_f
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v0, v1, :cond_26

    .line 32
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 33
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 36
    :cond_26
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    .line 37
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    .line 38
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    .line 39
    const/4 v0, 0x0

    :goto_35
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v0, v1, :cond_4c

    .line 40
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 43
    :cond_4c
    return-void
.end method

.method public getSPRSize()I
    .registers 3

    .line 64
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 69
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_6
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v0, v1, :cond_1b

    .line 51
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 55
    :cond_1b
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    const/4 v0, 0x0

    :goto_21
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v0, v1, :cond_36

    .line 57
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 60
    :cond_36
    return-void
.end method
