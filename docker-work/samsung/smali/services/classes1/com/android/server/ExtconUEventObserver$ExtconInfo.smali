.class public final Lcom/android/server/ExtconUEventObserver$ExtconInfo;
.super Ljava/lang/Object;
.source "ExtconUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ExtconUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtconInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ExtconUEventObserver$ExtconInfo$ExtconDeviceType;
    }
.end annotation


# static fields
.field public static final EXTCON_CHARGE_DOWNSTREAM:Ljava/lang/String; = "CHARGE-DOWNSTREAM"

.field public static final EXTCON_DOCK:Ljava/lang/String; = "DOCK"

.field public static final EXTCON_DVI:Ljava/lang/String; = "DVI"

.field public static final EXTCON_FAST_CHARGER:Ljava/lang/String; = "FAST-CHARGER"

.field public static final EXTCON_HDMI:Ljava/lang/String; = "HDMI"

.field public static final EXTCON_HEADPHONE:Ljava/lang/String; = "HEADPHONE"

.field public static final EXTCON_JIG:Ljava/lang/String; = "JIG"

.field public static final EXTCON_LINE_IN:Ljava/lang/String; = "LINE-IN"

.field public static final EXTCON_LINE_OUT:Ljava/lang/String; = "LINE-OUT"

.field public static final EXTCON_MECHANICAL:Ljava/lang/String; = "MECHANICAL"

.field public static final EXTCON_MHL:Ljava/lang/String; = "MHL"

.field public static final EXTCON_MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final EXTCON_SLOW_CHARGER:Ljava/lang/String; = "SLOW-CHARGER"

.field public static final EXTCON_SPDIF_IN:Ljava/lang/String; = "SPDIF-IN"

.field public static final EXTCON_SPDIF_OUT:Ljava/lang/String; = "SPDIF-OUT"

.field public static final EXTCON_TA:Ljava/lang/String; = "TA"

.field public static final EXTCON_USB:Ljava/lang/String; = "USB"

.field public static final EXTCON_USB_HOST:Ljava/lang/String; = "USB-HOST"

.field public static final EXTCON_VGA:Ljava/lang/String; = "VGA"

.field public static final EXTCON_VIDEO_IN:Ljava/lang/String; = "VIDEO-IN"

.field public static final EXTCON_VIDEO_OUT:Ljava/lang/String; = "VIDEO-OUT"

.field public static sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mDeviceTypes:Ljava/util/HashSet;
    .annotation build Lcom/android/server/ExtconUEventObserver$ExtconInfo$ExtconDeviceType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$q1NKfXWDxBCUTdtfDANc8h8632I(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->lambda$new$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 13

    const-string v0, ""

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 207
    iput-object p1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 210
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/extcon"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/ExtconUEventObserver$ExtconInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/ExtconUEventObserver$ExtconInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 212
    array-length v2, v1

    const-string v3, "This probably means the selinux policies need to be changed."

    const-string v4, "ExtconUEventObserver"

    if-nez v2, :cond_41

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to list cables in /sys/class/extcon/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_41
    array-length p1, v1

    const/4 v2, 0x0

    move v5, v2

    :goto_44
    if-ge v5, p1, :cond_8e

    aget-object v6, v1, v5

    const/4 v7, 0x0

    .line 221
    :try_start_49
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_6e

    .line 222
    :try_start_4d
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "name"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v2, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    .line 223
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 227
    iget-object v7, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6a} :catch_6b

    goto :goto_8b

    :catch_6b
    move-exception v6

    move-object v7, v8

    goto :goto_6f

    :catch_6e
    move-exception v6

    .line 229
    :goto_6f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/name. "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_8e
    return-void
.end method

.method public static getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0    # [Ljava/lang/String;
        .annotation build Lcom/android/server/ExtconUEventObserver$ExtconInfo$ExtconDeviceType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            ">;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-static {}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->initExtconInfos()V

    .line 186
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2c

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    sget-object v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2b

    aget-object v5, v1, v4

    .line 190
    array-length v6, p0

    move v7, v3

    :goto_17
    if-ge v7, v6, :cond_28

    aget-object v8, p0, v7

    .line 191
    invoke-virtual {v5, v8}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 192
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_28
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2b
    return-object v0

    :catchall_2c
    move-exception p0

    .line 186
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public static initExtconInfos()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    if-eqz v0, :cond_5

    return-void

    .line 162
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/extcon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_4b

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isDir "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " but listFiles returns null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "This probably means the selinux policies need to be changed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtconUEventObserver"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 169
    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    goto :goto_70

    .line 171
    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    array-length v3, v1

    move v4, v2

    :goto_53
    if-ge v4, v3, :cond_66

    aget-object v5, v1, v4

    .line 173
    new-instance v6, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_66
    new-array v1, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    :goto_70
    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "cable."

    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getDevicePath()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sys/class/extcon/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/devices"

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_2a

    return-object p0

    :cond_29
    return-object v0

    :catch_2a
    move-exception v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the extcon device path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ExtconUEventObserver"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatePath()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 268
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "/sys/class/extcon/%s/state"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCableType(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/server/ExtconUEventObserver$ExtconInfo$ExtconDeviceType;
        .end annotation
    .end param

    .line 203
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
