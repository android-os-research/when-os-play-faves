.class public final Lcom/android/internal/telephony/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAtLeastR()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1e
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastS()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1f
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastSv2()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x20
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastT()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x21
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
