.class public Landroid/content/om/WallpaperThemeUtils;
.super Ljava/lang/Object;
.source "WallpaperThemeUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SWT_WallpaperThemeUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hasWallpaperThemeOverlays(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 12
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_38

    .line 16
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_1a
    if-ge v3, v2, :cond_37

    aget-object v4, v1, v3

    .line 17
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_21

    .line 18
    goto :goto_34

    .line 19
    :cond_21
    const-string v5, "/data/resource-cache/android-SemWT_G_MonetPalette"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 20
    return v0

    .line 21
    :cond_2a
    const-string v5, "/data/resource-cache/android-SemWT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 22
    const/4 v0, 0x1

    return v0

    .line 16
    .end local v4    # "str":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 25
    :cond_37
    return v0

    .line 14
    :cond_38
    :goto_38
    return v0
.end method
