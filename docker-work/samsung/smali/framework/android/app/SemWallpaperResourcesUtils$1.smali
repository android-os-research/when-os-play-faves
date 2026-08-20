.class Landroid/app/SemWallpaperResourcesUtils$1;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperResourcesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method
