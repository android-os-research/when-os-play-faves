.class public Lcom/samsung/android/server/pm/install/SkippingApks;
.super Ljava/lang/Object;
.source "SkippingApks.java"


# instance fields
.field public mSkippingApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addSkippingApksFromFile(Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSkippingPackage(Ljava/lang/String;)Z
    .registers 3

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "SkippingApks:"

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public final getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 105
    :try_start_6
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_15} :catch_6e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_64
    .catchall {:try_start_6 .. :try_end_15} :catchall_62

    .line 108
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_43

    .line 110
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    goto :goto_43

    .line 112
    :cond_2c
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_43
    :goto_43
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result p1

    if-eqz p1, :cond_55

    .line 117
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_54} :catch_5f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_54} :catch_5c
    .catchall {:try_start_15 .. :try_end_54} :catchall_59

    goto :goto_43

    .line 129
    :cond_55
    :try_start_55
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_78

    goto :goto_7c

    :catchall_59
    move-exception p0

    move-object v0, v1

    goto :goto_7d

    :catch_5c
    move-exception p1

    move-object v0, v1

    goto :goto_65

    :catch_5f
    move-exception p1

    move-object v0, v1

    goto :goto_6f

    :catchall_62
    move-exception p0

    goto :goto_7d

    :catch_64
    move-exception p1

    .line 125
    :goto_65
    :try_start_65
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    if-eqz v0, :cond_7c

    .line 129
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_78

    goto :goto_7c

    :catch_6e
    move-exception p1

    .line 122
    :goto_6f
    :try_start_6f
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_62

    if-eqz v0, :cond_7c

    .line 129
    :try_start_74
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7c
    :goto_7c
    return-object p0

    :goto_7d
    if-eqz v0, :cond_87

    .line 129
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    :cond_87
    :goto_87
    throw p0
.end method

.method public getSkippingApkList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public initSkippingApkList()V
    .registers 2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/SkippingApks;->initSkippingApkList(Ljava/io/File;)V

    return-void
.end method

.method public initSkippingApkList(Ljava/io/File;)V
    .registers 8

    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    const-string v1, "/system/csc_contents/enforceskippingpackages.txt"

    const-string v2, "/data/omc/etc/enforceskippingpackages.txt"

    const/4 v3, 0x0

    if-eqz p1, :cond_14

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_90

    :cond_14
    const-string p1, "mdc.sys.omc_etcpath"

    .line 38
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_20
    move-object v1, v2

    goto :goto_90

    :cond_22
    if-eqz p1, :cond_87

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string/jumbo v1, "ro.boot.activatedid"

    .line 42
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/enforceskippingpackages_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_20

    :cond_51
    const-string/jumbo v2, "ro.csc.countryiso_code"

    .line 47
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    goto :goto_90

    .line 52
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/enforceskippingpackages.txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_90

    .line 55
    :cond_87
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8e

    goto :goto_90

    :cond_8e
    const-string v1, "/system/etc/enforceskippingpackages.txt"

    .line 61
    :goto_90
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingApksFromFile(Ljava/lang/String;)V

    const-string/jumbo p1, "persist.sys.omcnw_path"

    .line 65
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/etc/enforceinstallpackages_omcnw.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->removeSkippingApksFromFile(Ljava/lang/String;)V

    .line 74
    :cond_bc
    new-instance p1, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;

    invoke-direct {p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->hasAdditionalSkippingApkList()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->getAdditionalSkippingApkList()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    goto :goto_cf

    :cond_df
    return-void
.end method

.method public final isFileExists(Ljava/lang/String;)Z
    .registers 2

    .line 84
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isSkippingApk(Ljava/lang/String;)Z
    .registers 3

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final removeSkippingApksFromFile(Ljava/lang/String;)V
    .registers 4

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_22
    return-void
.end method
