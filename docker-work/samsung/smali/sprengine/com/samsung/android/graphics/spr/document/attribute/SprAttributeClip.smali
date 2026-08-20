.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeClip.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    .line 10
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    .line 16
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

    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    .line 10
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 21
    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    .line 29
    return-void
.end method

.method public getSPRSize()I
    .registers 2

    .line 41
    const/16 v0, 0x10

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

    .line 33
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 34
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 35
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 36
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 37
    return-void
.end method
