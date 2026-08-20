.class public Lcom/samsung/android/mcf/continuity/common/SemPlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ONE_UI_4_1_1:I = 0x1fdc4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAboveOneUi411()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1fdc4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
