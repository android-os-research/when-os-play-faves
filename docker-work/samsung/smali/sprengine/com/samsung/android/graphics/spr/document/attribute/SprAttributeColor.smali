.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeColor.java"


# static fields
.field public static final TYPE_ARGB:B = 0x1t

.field public static final TYPE_LINEAR_GRADIENT:B = 0x3t

.field public static final TYPE_LINK:B = 0x2t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_RADIAL_GRADIENT:B = 0x4t


# instance fields
.field public color:I

.field public colorType:B

.field public gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;


# direct methods
.method public constructor <init>(B)V
    .registers 4
    .param p1, "type"    # B

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 30
    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 32
    return-void
.end method

.method public constructor <init>(BBI)V
    .registers 7
    .param p1, "type"    # B
    .param p2, "colorType"    # B
    .param p3, "value"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 37
    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 39
    packed-switch p2, :pswitch_data_2c

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_27
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 46
    goto :goto_2b

    .line 41
    :pswitch_2a
    nop

    .line 51
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public constructor <init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .registers 7
    .param p1, "type"    # B
    .param p2, "colorType"    # B
    .param p3, "gradient"    # Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 56
    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 58
    packed-switch p2, :pswitch_data_2c

    .line 68
    :pswitch_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_27
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 65
    goto :goto_2b

    .line 60
    :pswitch_2a
    nop

    .line 70
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_e
        :pswitch_e
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public constructor <init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 4
    .param p1, "type"    # B
    .param p2, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 74
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 156
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    .line 158
    .local v0, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    if-eqz v1, :cond_10

    .line 159
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 162
    :cond_10
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 5
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 81
    packed-switch v0, :pswitch_data_40

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_24
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 97
    goto :goto_3f

    .line 92
    :pswitch_2c
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 93
    goto :goto_3f

    .line 88
    :pswitch_34
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 89
    goto :goto_3f

    .line 83
    :pswitch_3b
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 84
    nop

    .line 102
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_34
        :pswitch_34
        :pswitch_2c
        :pswitch_24
    .end packed-switch
.end method

.method public getSPRSize()I
    .registers 5

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "size":I
    iget-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v1, :pswitch_data_30

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown fill type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :pswitch_21
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 146
    .end local v0    # "size":I
    .local v1, "size":I
    goto :goto_2e

    .line 139
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :pswitch_2a
    const/4 v1, 0x5

    .line 140
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_2e

    .line 133
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :pswitch_2c
    const/4 v1, 0x0

    .line 134
    .end local v0    # "size":I
    .restart local v1    # "size":I
    nop

    .line 151
    :goto_2e
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v0, :pswitch_data_38

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 121
    goto :goto_36

    .line 115
    :pswitch_2b
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    goto :goto_36

    .line 110
    :pswitch_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    nop

    .line 126
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2b
        :pswitch_2b
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
