.class public Lcom/android/server/smartclip/SpenThemeManager;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenThemeManager$ThemeData;,
        Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
    }
.end annotation


# static fields
.field public static final AIR_COMMAND_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field public static final DEFAULT_ATTACH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Pen_att_noti1.ogg"

.field public static final DEFAULT_DETACH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Pen_det_noti1.ogg"

.field public static final INTENT_ACTION_CUSTOM_DOUBLE_TAP:Ljava/lang/String; = "com.samsung.android.service.aircommand.ACTION_CUSTOM_DOUBLE_TAP"

.field public static final PENTASTIC_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.pentastic"

.field public static final SETTINGS_KEY_PEN_CUSTOM_DOUBLE_TAP_ACTION_ENABLED:Ljava/lang/String; = "pen_custom_double_tap_action_enabled"

.field public static final SETTINGS_KEY_PEN_CUSTOM_DOUBLE_TAP_ACTION_SHORTCUT:Ljava/lang/String; = "pen_custom_double_tap_action_shortcut"

.field public static final SPEN_THEME_DIR_NAME:Ljava/lang/String; = "spen_theme"

.field public static final SPEN_THTME_DATA_FILE_NAME:Ljava/lang/String; = "spen_theme_data_file"

.field public static final SPEN_THTME_PEN_ATTACH_SOUND_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_attach_sound"

.field public static final SPEN_THTME_PEN_DETACH_SOUND_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_detach_sound"

.field public static final SPEN_THTME_PEN_HOVER_ICON_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_hover_icon"

.field public static final TAG:Ljava/lang/String; = "SpenThemeManager"

.field public static final TAG_HOTSPOT_X:Ljava/lang/String; = "hotspotX"

.field public static final TAG_HOTSPOT_Y:Ljava/lang/String; = "hotspotY"

.field public static final TAG_HOVER_ICON:Ljava/lang/String; = "hover-icon"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TOTAL_TYPES:I = 0x3

.field public static final TYPE_PEN_ATTACH_SOUND:I = 0x1

.field public static final TYPE_PEN_DETACH_SOUND:I = 0x2

.field public static final TYPE_PEN_HOVER_ICON:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPackageRemovedHandler:Landroid/os/Handler;

.field public mRegistered:Z

.field public mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageRemovedHandler(Lcom/android/server/smartclip/SpenThemeManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThemeData(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRootDir(Lcom/android/server/smartclip/SpenThemeManager;)Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 72
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 83
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$2;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager;->init()V

    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z
    .registers 7

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-nez p2, :cond_21

    .line 216
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 217
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p1, p1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p2, p1, p3

    .line 218
    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)Z

    goto :goto_34

    .line 221
    :cond_21
    invoke-virtual {p0, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p4

    .line 222
    invoke-virtual {p0, p2, p4}, Lcom/android/server/smartclip/SpenThemeManager;->saveFile(Ljava/io/FileDescriptor;Ljava/io/File;)V

    .line 223
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aput-object p1, p2, p3

    const/4 v1, 0x1

    if-eqz p3, :cond_34

    .line 226
    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)Z

    .line 230
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveData()V

    return v1
.end method

.method public canLaunchCustomDoubleTapAction()Z
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_custom_double_tap_action_enabled"

    const/4 v2, 0x0

    .line 266
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "pen_custom_double_tap_action_shortcut"

    .line 272
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_25

    .line 278
    sget-object p0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot launch custom double tab action. It is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 280
    :cond_25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 281
    sget-object p0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot launch custom double tab action. Shortcut info is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public clearCustomDoubleTapAction(Ljava/lang/String;)V
    .registers 4

    const-string v0, "com.samsung.android.pentastic"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 292
    :cond_9
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "pen_custom_double_tap_action_enabled"

    .line 292
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "pen_custom_double_tap_action_shortcut"

    const-string v0, ""

    .line 297
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public clearPenAttachSound(Ljava/lang/String;)V
    .registers 4

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 352
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenAttachSound(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public clearPenDetachSound(Ljava/lang/String;)V
    .registers 4

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenDetachSound(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public clearPenHoverIcon(Ljava/lang/String;)V
    .registers 4

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenHoverIcon(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final deleteFile(I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_25

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 179
    new-instance v0, Ljava/io/File;

    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->getAttachSoundPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->getDetachSoundPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    :cond_25
    :goto_25
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final deleteFile(Ljava/io/File;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_e

    .line 191
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public final getRootDir()Ljava/io/File;
    .registers 4

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/overlays"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "spen_theme"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_48

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    .line 116
    invoke-static {p0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_48
    return-object v0
.end method

.method public final getThemeFile(ILjava/lang/String;)Ljava/io/File;
    .registers 5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spen_theme_pen_hover_icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_19

    goto :goto_3e

    .line 133
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "spen_theme_pen_detach_sound"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 130
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "spen_theme_pen_attach_sound"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_3e
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;
    .registers 4

    .line 143
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init()V
    .registers 3

    .line 105
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 106
    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->loadData()V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager;->loadAndSetThemeFiles()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager;->registerPackageMonitorIfNeeded()V

    return-void
.end method

.method public launchCustomDoubleTapAction(Landroid/os/UserHandle;Landroid/graphics/Point;)V
    .registers 6

    .line 397
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Launch custom double tab action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.service.aircommand.ACTION_CUSTOM_DOUBLE_TAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.service.aircommand"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget v1, p2, Landroid/graphics/Point;->x:I

    const-string/jumbo v2, "tabX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    iget p2, p2, Landroid/graphics/Point;->y:I

    const-string/jumbo v1, "tabY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final loadAndSetThemeFiles()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget v2, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    iget v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    return-void
.end method

.method public final registerPackageMonitorIfNeeded()V
    .registers 5

    .line 199
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 204
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 205
    sget-object p0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "package monitor registered."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetPenAttachSound(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public resetPenDetachSound(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public resetPenHoverIcon(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    return-void
.end method

.method public final saveFile(Ljava/io/FileDescriptor;Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_39

    if-nez p2, :cond_5

    goto :goto_39

    :cond_5
    const/4 p0, 0x0

    .line 158
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1c
    .catchall {:try_start_6 .. :try_end_b} :catchall_18

    .line 159
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_16
    .catchall {:try_start_b .. :try_end_12} :catchall_2d

    .line 165
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_28

    goto :goto_2c

    :catch_16
    move-exception p0

    goto :goto_1f

    :catchall_18
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2e

    :catch_1c
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 161
    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    if-eqz v0, :cond_2c

    .line 165
    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception p0

    :goto_2e
    if-eqz v0, :cond_38

    .line 165
    :try_start_30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    :cond_38
    :goto_38
    throw p0

    :cond_39
    :goto_39
    return-void
.end method

.method public final setPenAttachSound(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 336
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 339
    :cond_9
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    goto :goto_19

    .line 337
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    .line 319
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 7

    .line 323
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set attach sound package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", file name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    :cond_2e
    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 329
    invoke-virtual {p0, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/File;)V

    goto :goto_41

    :cond_3d
    const/4 p1, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/File;)V

    :goto_41
    return-void
.end method

.method public final setPenDetachSound(Ljava/io/File;)V
    .registers 2

    if-nez p1, :cond_9

    .line 376
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    goto :goto_12

    .line 378
    :cond_9
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 7

    .line 362
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set detach sound package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", file name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    :cond_2e
    const/4 v0, 0x2

    .line 367
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 368
    invoke-virtual {p0, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/File;)V

    goto :goto_41

    :cond_3d
    const/4 p1, 0x0

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/File;)V

    :goto_41
    return-void
.end method

.method public final setPenHoverIcon(Ljava/io/FileDescriptor;FF)V
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_24

    .line 254
    invoke-static {p1, p0, p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 255
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set icon image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_24

    .line 257
    invoke-static {p1, p2, p3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p0

    .line 261
    :cond_24
    sget-object p1, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "set icon pointer icon = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 262
    invoke-static {p1, p0, p2}, Landroid/view/PointerIcon;->semSetDefaultPointerIconInternal(ILandroid/view/PointerIcon;Z)V

    return-void
.end method

.method public setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .registers 8

    .line 235
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set icon package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 240
    :cond_26
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iput p3, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 241
    iput p4, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    goto :goto_40

    :cond_3c
    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    :goto_40
    return-void
.end method
