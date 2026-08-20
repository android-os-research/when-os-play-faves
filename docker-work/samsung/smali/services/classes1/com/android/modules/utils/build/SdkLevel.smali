.class public final Lcom/android/modules/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastPreReleaseCodename(Ljava/lang/String;)Z
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 68
    :cond_c
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method public static isAtLeastR()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1e
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastS()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1f
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastSv2()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x20
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .registers 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x21
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
