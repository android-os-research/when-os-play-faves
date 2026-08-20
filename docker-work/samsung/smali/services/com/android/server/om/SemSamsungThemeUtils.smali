.class public final Lcom/android/server/om/SemSamsungThemeUtils;
.super Ljava/lang/Object;
.source "SemSamsungThemeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OverlayManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllFilesInDir(Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    const-string p0, "OverlayManager"

    const-string v0, "deleteAllFilesInDir, path is null"

    .line 131
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 139
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2b

    aget-object v2, p0, v1

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_24} :catch_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_27
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_2b
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_a

    const-string p0, "OverlayManager"

    const-string v0, "deleteFile, path is null"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public static deleteResourceMapFile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    if-eqz p0, :cond_47

    .line 188
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "resource-map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 190
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 192
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/overlays/remaps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".map"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_47

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_47
    return-void
.end method

.method public static getChangedPackageNames()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "com.android.contacts"

    .line 94
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v1, "com.android.mms"

    .line 98
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v1, "com.android.incallui"

    .line 102
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    const-string v1, "com.android.calendar"

    .line 106
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    return-object v0
.end method

.method public static getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "com.android.incallui"

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.mms"

    const-string v4, "com.android.contacts"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_84

    goto :goto_37

    :sswitch_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_37

    :cond_1b
    const/4 v5, 0x3

    goto :goto_37

    :sswitch_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_37

    :cond_24
    const/4 v5, 0x2

    goto :goto_37

    :sswitch_26
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_37

    :cond_2d
    const/4 v5, 0x1

    goto :goto_37

    :sswitch_2f
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    packed-switch v5, :pswitch_data_96

    const-string p0, "OverlayManager"

    const-string v0, "Wrong package name in getReplaceablePackageName!"

    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 62
    :pswitch_43
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 52
    :pswitch_4e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 57
    :pswitch_59
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 47
    :pswitch_64
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_6e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    return-object v0

    :cond_81
    return-object p0

    :cond_82
    return-object v0

    nop

    :sswitch_data_84
    .sparse-switch
        -0x3260a241 -> :sswitch_2f
        -0x29760a19 -> :sswitch_26
        -0x1b2f0756 -> :sswitch_1d
        -0xbcbbbbd -> :sswitch_14
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
    .end packed-switch
.end method

.method public static hasSamsungOverlayPermission(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 118
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public static isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 211
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_20

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v1, :cond_c

    goto :goto_20

    :cond_c
    const-string v2, "/data/overlays/current_locale_apks/files"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    const-string/jumbo v1, "zipped-overlay"

    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    :goto_20
    return v0
.end method

.method public static isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 203
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_29

    .line 206
    :cond_10
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/overlays/current_locale_apks/files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 207
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "com.samsung.android.zippedOverlay"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    :cond_29
    :goto_29
    return v0
.end method

.method public static moveFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_3b

    if-nez p1, :cond_5

    goto :goto_3b

    .line 170
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_3a

    aget-object v2, p1, v1

    .line 176
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_33} :catch_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :catch_36
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3a
    return-void

    :cond_3b
    :goto_3b
    const-string p0, "OverlayManager"

    const-string/jumbo p1, "moveFiles, path is null"

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
