.class public Lcom/android/server/wm/FreeformPersistBoundsParams;
.super Ljava/lang/Object;
.source "FreeformPersistBoundsParams.java"


# static fields
.field public static final ATTR_DISPLAY_BOUNDS:Ljava/lang/String; = "display_bounds"

.field public static final ATTR_FREEFORM_BOUNDS:Ljava/lang/String; = "freeform_bounds"

.field public static final ATTR_ROTATION:Ljava/lang/String; = "rotation"


# instance fields
.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mFreeformBounds:Landroid/graphics/Rect;

.field public mRotation:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

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

    if-eqz p1, :cond_30

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 111
    :cond_12
    check-cast p1, Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    iget p1, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    if-eq p0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public reset()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    return-void
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_2d

    :sswitch_c
    const-string v0, "freeform_bounds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2d

    :cond_15
    const/4 v1, 0x2

    goto :goto_2d

    :sswitch_17
    const-string v0, "display_bounds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2d

    :cond_20
    const/4 v1, 0x1

    goto :goto_2d

    :sswitch_22
    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    packed-switch v1, :pswitch_data_5e

    goto :goto_4f

    .line 54
    :pswitch_31
    invoke-static {p2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4f

    .line 61
    :pswitch_3d
    invoke-static {p2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 63
    iget-object p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4f

    .line 68
    :pswitch_49
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    :cond_4f
    :goto_4f
    return-void

    :sswitch_data_50
    .sparse-switch
        -0x266f082 -> :sswitch_22
        0x4c91dcd2 -> :sswitch_17
        0x5446b0a4 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3d
        :pswitch_31
    .end packed-switch
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "freeform_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "rotation"

    invoke-interface {p1, v1, v0, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public set(Lcom/android/server/wm/FreeformPersistBoundsParams;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 83
    iget p1, p1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    iput p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " freeformBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " displayBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
