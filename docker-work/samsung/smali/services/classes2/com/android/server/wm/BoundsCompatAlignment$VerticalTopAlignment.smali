.class public Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;
.super Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalTopAlignment"
.end annotation


# instance fields
.field public final mTmpStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;->mTmpStableInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I
    .registers 7

    if-nez p3, :cond_5

    .line 141
    iget p0, p1, Landroid/graphics/Rect;->top:I

    return p0

    .line 143
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 144
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p3

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;->mTmpStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignment$VerticalTopAlignment;->mTmpStableInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p3, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    if-eqz p2, :cond_29

    goto :goto_2b

    .line 147
    :cond_29
    iget p0, p1, Landroid/graphics/Rect;->top:I

    :goto_2b
    return p0
.end method
