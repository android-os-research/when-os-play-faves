.class public Lcom/android/server/pm/ModuleInfoProvider;
.super Ljava/lang/Object;
.source "ModuleInfoProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final MODULE_METADATA_KEY:Ljava/lang/String; = "android.content.pm.MODULE_METADATA"

.field public static final TAG:Ljava/lang/String; = "PackageManager.ModuleInfoProvider"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public volatile mMetadataLoaded:Z

.field public final mModuleInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public volatile mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 74
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Lcom/android/server/pm/ApexManager;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 82
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getInstalledModules(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 185
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_60

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_15

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 195
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p1, v1

    int-to-long v1, p1

    .line 196
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 195
    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_29} :catch_53

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 204
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ModuleInfo;

    if-eqz v1, :cond_36

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_52
    return-object v0

    :catch_53
    move-exception p0

    const-string p1, "PackageManager.ModuleInfoProvider"

    const-string v0, "Unable to retrieve all package names"

    .line 198
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 186
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getInstalledModules before metadata loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 4

    .line 213
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_34

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2b

    .line 217
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 218
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p2

    :cond_29
    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_2b
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ModuleInfo;

    return-object p0

    .line 214
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getModuleInfo before metadata loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "package"

    .line 90
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 92
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_7

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    return-object p0

    .line 229
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getVersion before metadata loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .registers 9

    const-string v0, "PackageManager.ModuleInfoProvider"

    const/4 v1, 0x1

    :try_start_3
    const-string/jumbo v2, "module-metadata"

    .line 137
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 139
    :goto_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 140
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_13

    goto :goto_3d

    :cond_13
    const-string/jumbo v2, "module"

    .line 144
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected metadata element: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3d} :catch_84
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3d} :catch_84
    .catchall {:try_start_3 .. :try_end_3d} :catchall_82

    .line 174
    :goto_3d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 175
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    goto :goto_90

    :cond_43
    const/4 v2, 0x0

    :try_start_44
    const-string/jumbo v3, "name"

    .line 156
    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    .line 157
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "isHidden"

    .line 159
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 161
    new-instance v5, Landroid/content/pm/ModuleInfo;

    invoke-direct {v5}, Landroid/content/pm/ModuleInfo;-><init>()V

    .line 162
    invoke-virtual {v5, v4}, Landroid/content/pm/ModuleInfo;->setHidden(Z)Landroid/content/pm/ModuleInfo;

    .line 163
    invoke-virtual {v5, v3}, Landroid/content/pm/ModuleInfo;->setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 164
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;

    .line 165
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 166
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 168
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_81} :catch_84
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_81} :catch_84
    .catchall {:try_start_44 .. :try_end_81} :catchall_82

    goto :goto_9

    :catchall_82
    move-exception p2

    goto :goto_91

    :catch_84
    move-exception p2

    :try_start_85
    const-string v2, "Error parsing module metadata"

    .line 171
    invoke-static {v0, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_82

    goto :goto_3d

    :goto_90
    return-void

    .line 174
    :goto_91
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 175
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 176
    throw p2
.end method

.method public systemReady()V
    .registers 7

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PackageManager.ModuleInfoProvider"

    if-eqz v0, :cond_1f

    const-string p0, "No configured module metadata provider."

    .line 100
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    const-wide/16 v3, 0x80

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_38} :catch_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_38} :catch_4a

    .line 117
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.content.pm.MODULE_METADATA"

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    return-void

    :catch_4a
    move-exception v0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to discover metadata package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
