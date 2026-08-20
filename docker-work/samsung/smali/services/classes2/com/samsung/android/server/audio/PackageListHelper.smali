.class public Lcom/samsung/android/server/audio/PackageListHelper;
.super Ljava/lang/Object;
.source "PackageListHelper.java"


# static fields
.field public static final MULTISOUND_ALLOWED_PACKAGE_LIST:Ljava/lang/String; = "/system/etc/multisound_allowed_package_list"

.field public static final MULTISOUND_RESTRICTED_PACKAGE_LIST:Ljava/lang/String; = "/system/etc/multisound_restricted_package_list"

.field public static final TAG:Ljava/lang/String; = "PackageListHelper"

.field public static sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

.field public static sInstance:Lcom/samsung/android/server/audio/PackageListHelper;


# instance fields
.field public final mAllowedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRestrictedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p0

    .line 53
    new-instance p1, Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/AppCategorizer;-><init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    sput-object p1, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    return-void
.end method

.method public static destroy()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 66
    invoke-static {}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->destroy()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/PackageListHelper;
    .registers 2

    .line 57
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/samsung/android/server/audio/PackageListHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PackageListHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 60
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    return-object p0
.end method


# virtual methods
.method public addPackage(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    const-string p0, "android.permission.MODIFY_PHONE_STATE"

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2f

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MODIFY_PHONE_STATE Permission Denial from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageListHelper"

    .line 147
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, p3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 155
    sget-object p1, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    iget p2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_42} :catch_42

    :catch_42
    return-void
.end method

.method public checkAudioSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 166
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Audio Settings Permission Denial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageListHelper"

    .line 169
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedAppList()[Ljava/lang/String;
    .registers 1

    .line 140
    sget-object p0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AppCategorizer;->getSelectedPackages()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initPackageList(Landroid/content/Context;)V
    .registers 7

    const-string v0, "PackageListHelper"

    const-string v1, "initPackageList"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/system/etc/multisound_restricted_package_list"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_5b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_54

    .line 75
    :try_start_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/system/etc/multisound_allowed_package_list"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_4a

    .line 80
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 82
    iget-object v4, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    if-nez v3, :cond_1f

    .line 88
    :cond_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 90
    iget-object v4, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_40

    :cond_37
    if-nez v3, :cond_2c

    .line 93
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4a

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3f} :catch_5b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_54

    goto :goto_61

    :catchall_40
    move-exception v3

    .line 73
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v2

    :try_start_46
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw v3
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v2

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v1

    :try_start_50
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v2
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_54} :catch_5b
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_54

    :catch_54
    move-exception v1

    const-string v2, "IOException"

    .line 96
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    :catch_5b
    move-exception v1

    const-string v2, "file does not exists"

    .line 94
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_61
    const/4 v0, 0x0

    .line 99
    :goto_62
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_88

    .line 100
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/server/audio/AudioHelper;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_85

    .line 102
    sget-object v2, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    iget-object v3, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_88
    return-void
.end method

.method public isAlreadyInDB(Ljava/lang/String;)Z
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->isRestrictedPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 118
    :cond_8
    sget-object p0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/AppCategorizer;->checkExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInAllowedList(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 123
    iget-object v2, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public isRestrictedPackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public removePackageForName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "removePackageForName"

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/audio/PackageListHelper;->checkAudioSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    return-void

    .line 111
    :cond_a
    sget-object p0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/audio/AudioHelper;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/AppCategorizer;->removePackage(I)V

    return-void
.end method
