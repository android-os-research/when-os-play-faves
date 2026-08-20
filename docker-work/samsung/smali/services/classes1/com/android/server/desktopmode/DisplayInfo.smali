.class public Lcom/android/server/desktopmode/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# static fields
.field public static final TYPE_DEX_ON_PC:I = 0x3e8

.field public static final TYPE_WIRELESS_DEX:I = 0x3e9


# instance fields
.field public final mDisplayId:I

.field public final mRealSize:Landroid/graphics/Point;

.field public final mRotation:I

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 27
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 28
    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 29
    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 31
    iget p1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 32
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    if-eqz v1, :cond_30

    const/high16 v1, 0x8000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_30

    const/16 p1, 0x3e8

    .line 34
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    goto :goto_42

    .line 35
    :cond_30
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v1, :cond_3e

    const/high16 v1, 0x4000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_3e

    const/16 p1, 0x3e9

    .line 37
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    goto :goto_42

    .line 39
    :cond_3e
    iget p1, v0, Landroid/view/DisplayInfo;->type:I

    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    :goto_42
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_10

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_d

    .line 66
    invoke-static {p0}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "WIRELESS_DEX"

    return-object p0

    :cond_10
    const-string p0, "DEX_ON_PC"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 75
    :cond_12
    check-cast p1, Lcom/android/server/desktopmode/DisplayInfo;

    .line 77
    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    if-ne v2, v3, :cond_31

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 80
    invoke-virtual {p0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public getDisplayId()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    return p0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .registers 2

    .line 52
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getRotation()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 92
    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 94
    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
