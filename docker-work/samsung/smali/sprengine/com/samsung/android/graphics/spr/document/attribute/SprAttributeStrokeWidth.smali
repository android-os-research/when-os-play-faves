.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeStrokeWidth.java"


# instance fields
.field public strokeWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 13
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .param p1, "width"    # F

    .line 16
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 17
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 4
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 28
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 29
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 31
    :cond_14
    return-void
.end method

.method public getSPRSize()I
    .registers 2

    .line 40
    const/4 v0, 0x4

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 36
    return-void
.end method
