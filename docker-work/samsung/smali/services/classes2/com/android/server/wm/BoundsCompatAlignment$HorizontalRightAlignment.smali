.class public Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment;
.super Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalRightAlignment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalRightAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 168
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
