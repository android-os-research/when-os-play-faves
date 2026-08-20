.class public Lcom/android/server/om/wallpapertheme/MetaDataManager;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/wallpapertheme/Package;",
            ">;"
        }
    .end annotation
.end field

.field public mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

.field public mUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/wallpapertheme/Uid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_MetaDataManager"

    .line 25
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    return-void
.end method


# virtual methods
.method public getPackageList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/wallpapertheme/Package;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRefUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 38
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/wallpapertheme/Uid;

    if-nez p0, :cond_f

    return-object v0

    .line 40
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/Uid;->getReference()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    return-object v0
.end method

.method public load(Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/server/om/wallpapertheme/MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/om/wallpapertheme/MetaData;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaData;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    .line 52
    sget-object v0, Landroid/content/om/WallpaperThemeConstants;->RES_METADATA_LIST:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_49

    aget v3, v0, v2

    .line 54
    :try_start_1d
    new-instance v4, Lcom/android/server/om/wallpapertheme/MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-direct {v4, v3, v5, v6}, Lcom/android/server/om/wallpapertheme/MetaData;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaData;Ljava/util/ArrayList;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v3

    .line 56
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 60
    :cond_49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    .line 61
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/Package;

    .line 62
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/Uid;

    .line 63
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 66
    :cond_80
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load metadata, uidMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removePackageList(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_b

    .line 71
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "null packageName"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_b
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 75
    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/Package;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_2a
    return-void
.end method

.method public final removeUidMap(Ljava/lang/String;)V
    .registers 8

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/wallpapertheme/Uid;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 91
    :cond_48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_66
    return-void
.end method

.method public update(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10

    const-string/jumbo v0, "theming-meta"

    .line 98
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removePackageList(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->getPackageResources(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_19

    return-void

    :cond_19
    if-lez v2, :cond_68

    .line 104
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parsing metadata file, resId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/android/server/om/wallpapertheme/MetaData;

    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/om/wallpapertheme/MetaData;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaData;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaData;->getRpUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaData;->getCurrentPackage()Lcom/android/server/om/wallpapertheme/Package;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/Uid;

    .line 110
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 113
    :cond_68
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ",|\\s"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_74
    if-ge v2, v1, :cond_f4

    aget-object v4, v0, v2

    .line 116
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parsing metadata file, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "xml"

    .line 117
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d2

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 120
    new-instance v5, Lcom/android/server/om/wallpapertheme/MetaData;

    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    iget-object v7, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-direct {v5, v4, v6, v7}, Lcom/android/server/om/wallpapertheme/MetaData;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaData;Ljava/util/ArrayList;)V

    .line 121
    invoke-virtual {v5}, Lcom/android/server/om/wallpapertheme/MetaData;->getRpUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5}, Lcom/android/server/om/wallpapertheme/MetaData;->getCurrentPackage()Lcom/android/server/om/wallpapertheme/Package;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/wallpapertheme/Uid;

    .line 124
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    .line 127
    :cond_d2
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "metadata file not found in res/xml"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_da} :catch_dd

    :cond_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :catch_dd
    move-exception p1

    .line 132
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    return-void
.end method
