.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPRObjectShapeGroup"


# instance fields
.field private mIsInitialized:Z

.field private final mIsRoot:Z

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "root"    # Z

    .line 26
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 32
    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 4
    .param p1, "root"    # Z
    .param p2, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ZLorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "root"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 46
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 53
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 54
    return-void
.end method


# virtual methods
.method public appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 213
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .registers 4
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 205
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 263
    .local v0, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 265
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 266
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_13

    .line 269
    :cond_29
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .registers 16
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 304
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 306
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->alpha:F

    mul-float/2addr v0, p5

    .line 308
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 309
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 312
    :cond_13
    const/4 v1, 0x0

    .line 313
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v7

    move v8, v2

    .end local v2    # "i":I
    .local v7, "n":I
    .local v8, "i":I
    :goto_1a
    if-ge v8, v7, :cond_2f

    .line 314
    invoke-virtual {p0, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v9

    .line 315
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .local v9, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v9, :cond_2b

    .line 316
    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    .line 313
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    move-object v1, v9

    goto :goto_1a

    .line 320
    .end local v7    # "n":I
    .end local v8    # "i":I
    .end local v9    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .restart local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_2f
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 321
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 63
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 13
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_be

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    .line 69
    .local v2, "type":B
    const/4 v3, 0x0

    .line 71
    .local v3, "size":I
    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3032

    const/16 v6, 0x3030

    if-lt v4, v6, :cond_1c

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v4, v5, :cond_1c

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    .line 75
    :cond_1c
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v7

    .line 77
    .local v7, "readSize":J
    sparse-switch v2, :sswitch_data_c6

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown element type:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "SPRObjectShapeGroup"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    int-to-long v9, v3

    invoke-virtual {p1, v9, v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto :goto_8e

    .line 103
    :sswitch_40
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_8e

    .line 79
    :sswitch_4b
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_8e

    .line 99
    :sswitch_57
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_8e

    .line 95
    :sswitch_62
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_8e

    .line 91
    :sswitch_6d
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_8e

    .line 87
    :sswitch_78
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_8e

    .line 83
    :sswitch_83
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    nop

    .line 112
    :goto_8e
    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v4, v6, :cond_ba

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v4, v5, :cond_ba

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v7

    .line 114
    .end local v7    # "readSize":J
    .local v4, "readSize":J
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-nez v6, :cond_a1

    goto :goto_ba

    .line 115
    :cond_a1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong skip size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    .end local v2    # "type":B
    .end local v3    # "size":I
    .end local v4    # "readSize":J
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 120
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_be
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_c5

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 123
    :cond_c5
    return-void

    :sswitch_data_c6
    .sparse-switch
        0x1 -> :sswitch_83
        0x2 -> :sswitch_78
        0x3 -> :sswitch_6d
        0x4 -> :sswitch_62
        0x5 -> :sswitch_57
        0x10 -> :sswitch_4b
        0x11 -> :sswitch_40
    .end sparse-switch
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_57

    .line 157
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_54

    .line 161
    :cond_14
    const-string v3, "rotation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_54

    .line 163
    :cond_1d
    const-string v3, "pivotX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_54

    .line 165
    :cond_26
    const-string v3, "pivotY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_54

    .line 167
    :cond_2f
    const-string v3, "translateX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_54

    .line 169
    :cond_38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_54

    .line 171
    :cond_3f
    const-string v3, "scaleX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_54

    .line 173
    :cond_48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_54

    .line 175
    :cond_4f
    const-string v3, "alpha"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "name":Ljava/lang/String;
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 182
    .local v0, "eventType":I
    :goto_5b
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a1

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "group"

    if-ne v0, v2, :cond_92

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 186
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 187
    :cond_79
    const-string v2, "path"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 188
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v3, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 189
    :cond_8c
    const-string v2, "clip-path"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 191
    :cond_92
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9c

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 193
    goto :goto_a1

    .line 197
    :cond_9c
    :goto_9c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 198
    .end local v1    # "tag":Ljava/lang/String;
    goto :goto_5b

    .line 200
    :cond_a1
    :goto_a1
    return-void
.end method

.method public getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 4
    .param p1, "index"    # I

    .line 253
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 254
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getObjectCount()I
    .registers 3

    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 246
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSPRSize()I
    .registers 5

    .line 142
    const/4 v0, 0x4

    .line 143
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 144
    .local v2, "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    .line 145
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    goto :goto_7

    .line 147
    :cond_1b
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v1, :cond_24

    .line 148
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_24
    return v0
.end method

.method public getTotalAttributeCount()I
    .registers 5

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 296
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalAttributeCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 297
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_7

    .line 299
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getTotalElementCount()I
    .registers 5

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 286
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalElementCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 287
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_7

    .line 289
    :cond_19
    return v0
.end method

.method public getTotalSegmentCount()I
    .registers 5

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 276
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalSegmentCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 277
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_7

    .line 279
    :cond_19
    return v0
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .registers 18
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "strokePaint"    # Landroid/graphics/Paint;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "isVisibleStroke"    # Z
    .param p5, "isVisibleFill"    # Z
    .param p6, "shadow"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 326
    move-object v0, p0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v3

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_24

    .line 330
    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_21

    .line 332
    iget-object v6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->strokePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v8, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleStroke:Z

    iget-boolean v9, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleFill:Z

    iget-object v10, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 329
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 336
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_24
    return-void
.end method

.method public removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .registers 4
    .param p1, "index"    # I

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 237
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .registers 6
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 221
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 226
    .local v1, "obj":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v3, 0x10

    if-ne v2, v3, :cond_30

    .line 227
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v2, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 228
    const/4 v0, 0x1

    return v0

    .line 231
    .end local v1    # "obj":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_30
    goto :goto_13

    .line 232
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 130
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 133
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_f

    .line 135
    :cond_2b
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_32

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 138
    :cond_32
    return-void
.end method
