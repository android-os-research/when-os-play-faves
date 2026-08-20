.class public Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;
.super Ljava/lang/Object;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CenterAlignment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 131
    iget p0, p2, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalCenterOffset(II)I

    move-result p0

    return p0
.end method
