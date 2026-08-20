.class public Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
.super Ljava/lang/Object;
.source "CocktailBarConfig.java"


# static fields
.field public static final DEFAULT_VERSION:I = 0x1

.field public static final INTENT_FILTER:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field public static final META_DATA:Ljava/lang/String; = "com.samsung.android.edge.config"

.field public static final TAG:Ljava/lang/String; = "CocktailBarConfig"

.field public static final TAG_CATEGORY_FILTER:Ljava/lang/String; = "category_filter"

.field public static final TAG_META_DATA_HIDE_EDGE_SERVICE:Ljava/lang/String; = "meta_data_hide_edge_service"

.field public static final TAG_PACKAGE_HIDE_EDGE_SERVICE:Ljava/lang/String; = "package_hide_edge_service"

.field public static final TAG_PREFERRED_WIDTH:Ljava/lang/String; = "preferred_width"

.field public static final TAG_REPLACED_COMPONENT:Ljava/lang/String; = "replaced_component"

.field public static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;


# instance fields
.field public mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCategoryFilterStr:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mIsServiceFounded:Z

.field public mMetaDataHideEdgeService:Ljava/lang/String;

.field public mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreferredWidth:I

.field public final mReplacedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 50
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
    .registers 2

    .line 53
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 56
    :cond_b
    sget-object p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    return-object p0
.end method


# virtual methods
.method public final addReplcaedComponent(Ljava/lang/String;)V
    .registers 6

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    sget-object p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addReplcaedComponent: value is empty. -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const-string v0, ","

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 205
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_44

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_44

    .line 209
    :cond_3a
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    aget-object p1, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 206
    :cond_44
    :goto_44
    sget-object p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addReplcaedComponent: value is wrong. - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CocktailBarConfig] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " version="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " categoryStr="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " width="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 219
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, " hideAppList="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3d
    const-string/jumbo v1, "replaced cn size="

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "\n"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryFilter()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v0, :cond_2e

    .line 91
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 95
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 96
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 100
    :cond_27
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string v1, "getCategoryFilter: CategoryFilterStr is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2e
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCategoryFilterStr()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    return-object p0
.end method

.method public getConvertedComponent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getEdgeConfigParser()Landroid/content/res/XmlResourceParser;
    .registers 7

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7a

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 138
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 139
    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEdgeConfigParser: not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 142
    :cond_4c
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 143
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.android.edge.config"

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0

    .line 145
    :cond_61
    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEdgeConfigParser: not system app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 149
    :cond_7a
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 150
    sget-object p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string v0, "getEdgeConfigParser: no enabled cocktailbarservice"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaDataHideEdgeService()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageHideEdgeServiceList()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object p0
.end method

.method public getPreferredWidth()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    return p0
.end method

.method public getVersion()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    return p0
.end method

.method public final parseEdgeConfig()V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getEdgeConfigParser()Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const-string/jumbo v1, "ro.product.name"

    .line 117
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_24

    .line 120
    :try_start_d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_10} :catch_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_16
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 126
    :goto_10
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_24

    :catchall_14
    move-exception p0

    goto :goto_20

    :catch_16
    move-exception p0

    .line 124
    :try_start_17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_1b
    move-exception p0

    .line 122
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    goto :goto_10

    .line 126
    :goto_20
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 127
    throw p0

    :cond_24
    :goto_24
    return-void
.end method

.method public final parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a8

    .line 160
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    goto/16 :goto_a2

    :cond_10
    const-string/jumbo v0, "version"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "name"

    .line 164
    invoke-interface {p1, v3, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    goto/16 :goto_a2

    :cond_25
    const-string v0, "category_filter"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "value"

    if-eqz v0, :cond_55

    const-string/jumbo v0, "product"

    .line 166
    invoke-interface {p1, v3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_a2

    .line 170
    :cond_3a
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-nez v1, :cond_46

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    :cond_46
    if-eqz p2, :cond_a2

    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 172
    :cond_4e
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    goto :goto_a2

    :cond_55
    const-string/jumbo v0, "preferred_width"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/16 v0, 0xa0

    .line 175
    invoke-interface {p1, v3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    goto :goto_a2

    :cond_67
    const-string/jumbo v0, "package_hide_edge_service"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 177
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a2

    .line 179
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_82
    const-string/jumbo v0, "meta_data_hide_edge_service"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 182
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    goto :goto_a2

    :cond_92
    const-string/jumbo v0, "replaced_component"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 184
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->addReplcaedComponent(Ljava/lang/String;)V

    .line 190
    :cond_a2
    :goto_a2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto/16 :goto_4

    :cond_a8
    return-void
.end method

.method public reload()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    if-nez v0, :cond_a

    .line 109
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    .line 110
    iget-boolean p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method
