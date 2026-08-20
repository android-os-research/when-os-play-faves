.class public Landroid/app/SemWallpaperResourcesUtils;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesUtils.java"


# static fields
.field private static final blacklist CHAMELEON_WALLPAPER_PATH:Ljava/lang/String; = "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

.field private static final blacklist CUSTOMER_FILE:Ljava/lang/String; = "customer.xml"

.field private static final blacklist DEFAULT_DEVICE_COLOR_BLACK:Ljava/lang/String; = "black"

.field private static final blacklist DEFAULT_THEME_VIDEO_RES_ID_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final blacklist DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field private static final blacklist HOME_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/wallpaper/default_wallpaper/"

.field private static final blacklist HOME_OMC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/wallpaper/drawable/"

.field private static final blacklist KEYGUARD_CSC_DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "lockscreen_default_wallpaper"

.field private static final blacklist LOCK_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/wallpaper/"

.field private static final blacklist LOCK_OMC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/wallpaper/lockscreen/drawable/"

.field private static final blacklist MULTI_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/csc_contents/"

.field private static final blacklist PROPERTY_OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final blacklist PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperResourcesUtils"

.field private static blacklist mImageFileNameFilter:Ljava/io/FilenameFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/app/SemWallpaperResourcesUtils$1;

    invoke-direct {v0}, Landroid/app/SemWallpaperResourcesUtils$1;-><init>()V

    sput-object v0, Landroid/app/SemWallpaperResourcesUtils;->mImageFileNameFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "cscFile":Ljava/io/File;
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 151
    invoke-static {p0, p2}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_21

    .line 153
    :cond_b
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/csc_contents/"

    invoke-static {v2, v1}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 154
    if-nez v0, :cond_21

    .line 155
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/wallpaper/"

    invoke-static {v2, v1}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 158
    :cond_21
    :goto_21
    if-eqz v0, :cond_3f

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csc wallpaper return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperResourcesUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3f
    return-object v0
.end method

.method private static blacklist getCSCWallpaperFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, "cscFile":Ljava/io/File;
    const-string/jumbo v1, "ro.config.wallpaper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 170
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 174
    :cond_12
    if-nez v0, :cond_1a

    .line 175
    const-string v2, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 179
    :cond_1a
    if-nez v0, :cond_33

    .line 181
    const/4 v2, 0x1

    invoke-static {p0, v2, p1}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/csc_contents/"

    invoke-static {v4, v3}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 184
    if-nez v0, :cond_33

    .line 185
    invoke-static {p0, v2, p1}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/wallpaper/default_wallpaper/"

    invoke-static {v3, v2}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 188
    :cond_33
    if-eqz v0, :cond_51

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csc wallpaper return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperResourcesUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_51
    return-object v0
.end method

.method private static blacklist getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_16

    .line 91
    return-object v0

    .line 93
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "videoName"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.omc_respath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/lockscreen/drawable/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "omcResourcePath":Ljava/lang/String;
    const-string v1, ""

    .line 120
    .local v1, "omcVideoWallpaperFileName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 121
    move-object v1, p0

    goto :goto_26

    .line 123
    :cond_24
    const-string v1, "lockscreen_default_wallpaper.mp4"

    .line 125
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 126
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    .line 127
    .local v3, "fileExist":Z
    :goto_40
    if-eqz v3, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_54
    const/4 v4, 0x0

    :goto_55
    return-object v4
.end method

.method public static blacklist getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "omcFile":Ljava/io/File;
    const-string/jumbo v1, "persist.sys.omc_respath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "omcResourcePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, "omcWallpaperDirPath":Ljava/lang/String;
    if-eqz v1, :cond_65

    .line 57
    and-int/lit8 v3, p1, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    invoke-static {}, Landroid/app/SemWallpaperResourcesUtils;->isUsedWithLockscreen()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_2b

    .line 60
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/wallpaper/lockscreen/drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    .line 58
    :cond_2b
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/wallpaper/drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    :goto_3e
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/SemWallpaperResourcesUtils;->getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_65

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "omc wallpaper return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperResourcesUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_65
    return-object v0
.end method

.method private static blacklist getOperatorFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "wallpaperDir":Ljava/io/File;
    sget-object v2, Landroid/app/SemWallpaperResourcesUtils;->mImageFileNameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "wallpapers":[Ljava/lang/String;
    if-eqz v2, :cond_4d

    array-length v3, v2

    if-lez v3, :cond_4d

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    array-length v4, v2

    if-ge v3, v4, :cond_4d

    .line 76
    aget-object v4, v2, v3

    const/4 v5, 0x0

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/SemWallpaperResourcesUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_4a

    .line 80
    goto :goto_4d

    .line 75
    .end local v4    # "name":Ljava/lang/String;
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 85
    .end local v3    # "i":I
    :cond_4d
    :goto_4d
    return-object v0
.end method

.method private static blacklist getOperatorFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "name":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    invoke-static {}, Landroid/app/SemWallpaperResourcesUtils;->isUsedWithLockscreen()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_10

    .line 109
    :cond_d
    const-string v0, "lockscreen_default_wallpaper"

    goto :goto_12

    .line 107
    :cond_10
    :goto_10
    const-string v0, "default_wallpaper"

    .line 111
    :goto_12
    return-object v0
.end method

.method public static blacklist isDefaultOperatorWallpaper(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 134
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/SemWallpaperResourcesUtils;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "color"    # Ljava/lang/String;

    .line 141
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getCSCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    .line 142
    invoke-static {p0, p1, p2}, Landroid/app/SemWallpaperResourcesUtils;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 143
    .local v0, "isDefaultOperatorWallpaper":Z
    :goto_10
    return v0
.end method

.method public static blacklist isUsedWithLockscreen()Z
    .registers 13

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persist.sys.omc_respath"

    const-string v3, "customer.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, "customerFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 199
    :try_start_11
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 200
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 201
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 203
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v5, "Wallpaper"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 204
    .local v5, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_7e

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_7e

    .line 205
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2c
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_7e

    .line 206
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 207
    .local v7, "node":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 208
    .local v8, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v8, :cond_78

    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lez v9, :cond_78

    .line 209
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_43
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_78

    .line 210
    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "attrName":Ljava/lang/String;
    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "attrValue":Ljava/lang/String;
    const-string/jumbo v12, "usedWithLockScreen"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_75

    const-string/jumbo v12, "true"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_71} :catch_7f

    if-eqz v12, :cond_75

    .line 213
    const/4 v0, 0x1

    .line 214
    goto :goto_78

    .line 209
    .end local v10    # "attrName":Ljava/lang/String;
    .end local v11    # "attrValue":Ljava/lang/String;
    :cond_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 218
    .end local v9    # "j":I
    :cond_78
    :goto_78
    if-eqz v0, :cond_7b

    goto :goto_7e

    .line 205
    .end local v7    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 223
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "i":I
    :cond_7e
    :goto_7e
    goto :goto_83

    .line 221
    :catch_7f
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    return v0
.end method
