.class public Lcom/samsung/android/desktopmode/DexTaskInfo;
.super Ljava/lang/Object;
.source "DexTaskInfo.java"


# static fields
.field public static final blacklist FLAG_FIXED_ORIENTATION:I = 0x4

.field public static final blacklist FLAG_IN_MULTI_WINDOW_MODE:I = 0x1

.field public static final blacklist FLAG_RESIZEABLE_TO_FULLSCREEN:I = 0x2


# instance fields
.field private final blacklist mFlags:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist isFixedOrientation()Z
    .registers 2

    .line 56
    iget v0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isInMultiWindowMode()Z
    .registers 3

    .line 48
    iget v0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isResizableToFullscreen()Z
    .registers 2

    .line 52
    iget v0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
