.class public Lcom/android/server/wm/BoundsCompatAlignment;
.super Ljava/lang/Object;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment;,
        Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment;,
        Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment;,
        Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;,
        Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;,
        Lcom/android/server/wm/BoundsCompatAlignment$LazyHolder;
    }
.end annotation


# instance fields
.field public final mAlignment:I

.field public final mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

.field public final mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    .line 71
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-direct {v0, v2}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    goto :goto_25

    .line 68
    :cond_16
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment;

    invoke-direct {v0, v2}, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    goto :goto_25

    .line 65
    :cond_1e
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment;

    invoke-direct {v0, v2}, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    :goto_25
    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x50

    if-eq p1, v0, :cond_37

    .line 83
    new-instance p1, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-direct {p1, v2}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    goto :goto_46

    .line 80
    :cond_37
    new-instance p1, Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment;

    invoke-direct {p1, v2}, Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    goto :goto_46

    .line 77
    :cond_3f
    new-instance p1, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;

    invoke-direct {p1, v2}, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    :goto_46
    return-void
.end method

.method public static getCenterAlignment()Lcom/android/server/wm/BoundsCompatAlignment;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/server/wm/BoundsCompatAlignment$LazyHolder;->sCenterAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    return-object v0
.end method

.method public static getVerticalCenterOffset(II)I
    .registers 2

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getAlignment()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    return p0
.end method

.method public getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    return p0
.end method

.method public isCenterVertical()Z
    .registers 2

    .line 92
    iget p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x30

    if-eq p0, v0, :cond_e

    const/16 v0, 0x50

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundsCompatAlignment:"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Alignment=0x"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Vertical="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mVertical:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Horizontal="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mHorizontal:Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
