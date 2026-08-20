.class public Lcom/samsung/server/wallpaper/snapshot/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ATTR_HISTORY_COUNT:Ljava/lang/String; = "hisotory_count"

.field public static final BACKUP_DEX_WALLPAPER_DIR:Ljava/lang/String; = "dex_wallpaper_backup"

.field public static final BACKUP_SUBDISPLAY_WALLPAPER_DIR:Ljava/lang/String; = "sub_wallpaper_backup"

.field public static final BACKUP_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_backup"

.field public static final ERROR_ALREADY_EXIST:I = -0x3

.field public static final ERROR_COPY_FILE:I = -0x2

.field public static final ERROR_MAX_NUMBER_EXCEEDED:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x9

.field public static final MAX_HISTORY:I = 0x1e

.field public static final MAX_SNAPSHOTS:I = 0x64

.field public static final MIGRATE:I = 0x3ec

.field public static final NOT_EXIST:I = -0x1

.field public static final NO_DATA:I = 0x3eb

.field public static final PREFIX_RESTORE:Ljava/lang/String; = "[RESTORE]"

.field public static final RESET_TO_DEFAULT:I = 0x3ea

.field public static final SUCCESS:I = 0x3e9

.field public static final TAG_SNAPSHOT_HISTORY:Ljava/lang/String; = "history"

.field public static final TAG_SNAPSHOT_RESULTS:Ljava/lang/String; = "results"

.field public static final TYPE_BACKUP:I = 0x1

.field public static final TYPE_CLEAR:I = 0x3

.field public static final TYPE_PARTIAL_CLEAR:I = 0x4

.field public static final TYPE_RESTORE:I = 0x2

.field public static final WALLPAPER_BACKUP_INFO:Ljava/lang/String; = "wallpaper_backup_info.xml"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
