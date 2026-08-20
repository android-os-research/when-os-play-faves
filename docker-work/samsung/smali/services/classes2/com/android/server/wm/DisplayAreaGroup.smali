.class public Lcom/android/server/wm/DisplayAreaGroup;
.super Lcom/android/server/wm/RootDisplayArea;
.source "DisplayAreaGroup.java"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getOrientation(I)I
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result p1

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result p1

    :cond_e
    return p1
.end method

.method public isOrientationDifferentFromDisplay()Z
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z
    .registers 5

    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x1

    if-ge v1, p1, :cond_17

    move p1, v2

    goto :goto_18

    :cond_17
    move p1, v0

    .line 51
    :goto_18
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ge v1, p0, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v0

    :goto_25
    if-eq p1, p0, :cond_28

    move v0, v2

    :cond_28
    return v0
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 5

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 72
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_c

    return-void

    .line 78
    :cond_c
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 81
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 89
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 90
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2d

    .line 91
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_31

    :cond_2d
    if-ne p0, p1, :cond_31

    .line 93
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_31
    :goto_31
    return-void
.end method
