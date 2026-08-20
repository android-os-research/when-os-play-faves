.class public interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .registers 1

    if-eqz p0, :cond_7

    .line 76
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getRequestedVisibility(I)Z
    .registers 2

    .line 46
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result p0

    return p0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideInsets(IZ)V
    .registers 3

    return-void
.end method

.method public notifyInsetsControlChanged()V
    .registers 1

    return-void
.end method

.method public showInsets(IZ)V
    .registers 3

    return-void
.end method
