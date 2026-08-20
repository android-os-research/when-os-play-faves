.class public Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment;
.super Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalBottomAlignment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignment$VerticalBottomAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 154
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
