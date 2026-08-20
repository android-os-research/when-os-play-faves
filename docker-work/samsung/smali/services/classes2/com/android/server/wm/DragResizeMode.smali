.class public Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field public static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field public static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method
