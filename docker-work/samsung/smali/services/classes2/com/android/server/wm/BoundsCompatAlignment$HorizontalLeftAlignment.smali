.class public Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment;
.super Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalLeftAlignment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment;-><init>(Lcom/android/server/wm/BoundsCompatAlignment$CenterAlignment-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignment$HorizontalLeftAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
