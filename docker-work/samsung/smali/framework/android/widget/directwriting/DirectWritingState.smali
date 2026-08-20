.class public final Landroid/widget/directwriting/DirectWritingState;
.super Ljava/lang/Object;
.source "DirectWritingState.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static blacklist isDirectWritingUsable(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "isDesktopMode"    # Ljava/lang/Boolean;

    .line 13
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_b

    .line 14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 16
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
