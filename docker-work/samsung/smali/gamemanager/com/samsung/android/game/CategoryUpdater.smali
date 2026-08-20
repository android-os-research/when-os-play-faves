.class Lcom/samsung/android/game/CategoryUpdater;
.super Ljava/lang/Object;
.source "CategoryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/CategoryUpdater$CategoryCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/samsung/android/game/CategoryUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private isLaunchablePackageAsUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 241
    iget-object v0, p0, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 244
    return v1

    .line 250
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "intentToResolve":Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v0, v2, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 256
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_34

    .line 258
    :cond_25
    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 259
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {v0, v2, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 264
    :cond_34
    if-eqz v4, :cond_3f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3d

    goto :goto_3f

    .line 268
    :cond_3d
    const/4 v1, 0x1

    return v1

    .line 265
    :cond_3f
    :goto_3f
    return v1
.end method

.method private isNonGamePackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 237
    if-eqz p1, :cond_14

    .line 238
    const-string v0, "org.chromium.webapk."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.samsung.themedesigner."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 237
    :goto_15
    return v0
.end method

.method private parseCategory(Ljava/lang/String;)I
    .registers 6
    .param p1, "categoryString"    # Ljava/lang/String;

    .line 163
    const/4 v0, -0x1

    .line 165
    .local v0, "category":I
    if-eqz p1, :cond_32

    .line 166
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_56

    :cond_b
    goto :goto_29

    :sswitch_c
    const-string v2, "sec_game_family"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x2

    goto :goto_29

    :sswitch_16
    const-string v2, "game"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_29

    :sswitch_20
    const-string v2, "undefined"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x0

    :goto_29
    packed-switch v1, :pswitch_data_64

    .line 177
    const/4 v0, 0x0

    goto :goto_32

    .line 174
    :pswitch_2e
    const/4 v0, 0x3

    .line 175
    goto :goto_32

    .line 171
    :pswitch_30
    const/4 v0, 0x1

    .line 172
    nop

    .line 181
    :cond_32
    :goto_32
    :pswitch_32
    sget-object v1, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCategory(), categoryString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return v0

    nop

    :sswitch_data_56
    .sparse-switch
        -0x3de09eb0 -> :sswitch_20
        0x304bf2 -> :sswitch_16
        0x7b834163 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_32
        :pswitch_30
        :pswitch_2e
    .end packed-switch
.end method

.method private setCategoryToDB(ILjava/lang/String;I)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 186
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    .line 187
    .local v0, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    iget-object v1, p0, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/data/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/data/DatabaseHelper;

    move-result-object v1

    .line 188
    .local v1, "dbHelper":Lcom/samsung/android/game/data/DatabaseHelper;
    if-eqz p3, :cond_25

    .line 189
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v2

    .line 190
    .local v2, "pkgData":Lcom/samsung/android/game/PkgData;
    if-nez v2, :cond_1e

    .line 191
    new-instance v3, Lcom/samsung/android/game/PkgData;

    invoke-direct {v3, p2}, Lcom/samsung/android/game/PkgData;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 192
    invoke-virtual {v2, p1}, Lcom/samsung/android/game/PkgData;->setUserID(I)V

    .line 193
    invoke-virtual {v0, p2, p1, v2}, Lcom/samsung/android/game/PkgDataHelper;->putPkgData(Ljava/lang/String;ILcom/samsung/android/game/PkgData;)V

    .line 195
    :cond_1e
    invoke-virtual {v2, p3}, Lcom/samsung/android/game/PkgData;->setCategory(I)V

    .line 196
    invoke-virtual {v1, p2, v2, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->updateOrAddPkg(Ljava/lang/String;Lcom/samsung/android/game/PkgData;I)I

    .line 197
    .end local v2    # "pkgData":Lcom/samsung/android/game/PkgData;
    goto :goto_2b

    .line 198
    :cond_25
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/game/PkgDataHelper;->removePkgData(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->removeGame(Ljava/lang/String;I)V

    .line 201
    :goto_2b
    return-void
.end method


# virtual methods
.method public getInstalledPkgList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 206
    sget-object v2, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getInstalledPkgList(), pm is null"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v1

    .line 211
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "pkgAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v3, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstalledPkgList(),  userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez v2, :cond_36

    .line 214
    const-string v4, "getInstalledPkgList(), pkgAppsList is null"

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v1

    .line 219
    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "installedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 221
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3f

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_52

    .line 222
    goto :goto_3f

    .line 225
    :cond_52
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/game/CategoryUpdater;->isLaunchablePackageAsUser(Ljava/lang/String;I)Z

    move-result v5

    .line 226
    .local v5, "launchable":Z
    if-eqz v5, :cond_89

    .line 227
    sget-object v6, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInstalledPkgList(), add to target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "launchable":Z
    :cond_89
    goto :goto_3f

    .line 232
    :cond_8a
    return-object v1
.end method

.method public updateCategoriesToDB(Ljava/util/List;I)Z
    .registers 20
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 84
    .local p1, "srcPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 86
    .local v3, "successful":Z
    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 87
    sget-object v4, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v5, "updateCategoriesToDB(), srcPkgNameList is null"

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return v0

    .line 91
    :cond_10
    sget-object v4, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCategoriesToDB(), userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "pkgNameListToCheckFurther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ", category="

    const-string v8, "updateCategoriesToDB(), pkgName="

    if-eqz v6, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v9, -0x1

    .line 97
    .local v9, "category":I
    new-instance v10, Lcom/samsung/android/game/network/LocalCache;

    invoke-direct {v10}, Lcom/samsung/android/game/network/LocalCache;-><init>()V

    .line 98
    .local v10, "localCache":Lcom/samsung/android/game/network/LocalCache;
    invoke-virtual {v10}, Lcom/samsung/android/game/network/LocalCache;->getSecGameFamilyPackageNames()Ljava/util/List;

    move-result-object v11

    .line 99
    .local v11, "secGameFamilyPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/samsung/android/game/network/LocalCache;->getGamePackageNames()Ljava/util/List;

    move-result-object v12

    .line 101
    .local v12, "gamePackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, v6}, Lcom/samsung/android/game/CategoryUpdater;->isNonGamePackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_57

    .line 102
    const/4 v9, 0x0

    goto :goto_66

    .line 103
    :cond_57
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 104
    const/4 v9, 0x3

    goto :goto_66

    .line 105
    :cond_5f
    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66

    .line 106
    const/4 v9, 0x1

    .line 109
    :cond_66
    :goto_66
    const/4 v13, -0x1

    if-ne v9, v13, :cond_89

    .line 110
    sget-object v7, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", needs to check the sever data"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 113
    :cond_89
    sget-object v13, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_a7
    invoke-direct {v1, v2, v6, v9}, Lcom/samsung/android/game/CategoryUpdater;->setCategoryToDB(ILjava/lang/String;I)V

    .line 118
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v9    # "category":I
    .end local v10    # "localCache":Lcom/samsung/android/game/network/LocalCache;
    .end local v11    # "secGameFamilyPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "gamePackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_31

    .line 120
    :cond_ab
    new-instance v5, Lcom/samsung/android/game/network/NetworkConnector;

    iget-object v6, v1, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/game/network/NetworkConnector;-><init>(Landroid/content/Context;)V

    .line 121
    .local v5, "nc":Lcom/samsung/android/game/network/NetworkConnector;
    invoke-virtual {v5}, Lcom/samsung/android/game/network/NetworkConnector;->isNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_c0

    .line 122
    sget-object v6, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v7, "updateCategoriesToDB(), Network is NOT connected. Failed to update"

    invoke-static {v6, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return v0

    .line 126
    :cond_c0
    :try_start_c0
    invoke-virtual {v5, v4}, Lcom/samsung/android/game/network/NetworkConnector;->getPackageNamesForQuery(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, "packageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_141

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_cf

    goto/16 :goto_141

    .line 133
    :cond_cf
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_140

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 134
    .local v9, "packageNames":Ljava/lang/String;
    invoke-virtual {v5, v9}, Lcom/samsung/android/game/network/NetworkConnector;->getCategoryFromServer(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 135
    .local v10, "responseJsonArr":Lorg/json/JSONArray;
    if-nez v10, :cond_ee

    .line 136
    sget-object v11, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v12, "updateCategoriesToDB(), responseJsonArr was null!"

    invoke-static {v11, v12}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v3, 0x0

    .line 138
    goto :goto_d3

    .line 140
    :cond_ee
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ef
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_13b

    .line 141
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 142
    .local v12, "responseJson":Lorg/json/JSONObject;
    if-nez v12, :cond_101

    .line 143
    const/4 v3, 0x0

    .line 144
    move-object/from16 v16, v0

    goto :goto_134

    .line 147
    :cond_101
    const-string v13, "pkg_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "pkgName":Ljava/lang/String;
    const-string v14, "pkg_type"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "categoryString":Ljava/lang/String;
    invoke-direct {v1, v14}, Lcom/samsung/android/game/CategoryUpdater;->parseCategory(Ljava/lang/String;)I

    move-result v15

    .line 150
    .local v15, "category":I
    invoke-direct {v1, v2, v13, v15}, Lcom/samsung/android/game/CategoryUpdater;->setCategoryToDB(ILjava/lang/String;I)V

    .line 151
    move-object/from16 v16, v0

    sget-object v0, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v12    # "responseJson":Lorg/json/JSONObject;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "categoryString":Ljava/lang/String;
    .end local v15    # "category":I
    :goto_134
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_ef

    :cond_13b
    move-object/from16 v16, v0

    .line 153
    .end local v9    # "packageNames":Ljava/lang/String;
    .end local v10    # "responseJsonArr":Lorg/json/JSONArray;
    .end local v11    # "i":I
    move-object/from16 v1, p0

    goto :goto_d3

    .line 156
    .end local v6    # "packageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_140
    goto :goto_14f

    .line 129
    .restart local v6    # "packageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_141
    :goto_141
    sget-object v1, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v7, "updateCategoriesToDB(), packageNamesList is null or Empty"

    invoke-static {v1, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_148} :catch_149

    .line 130
    return v0

    .line 154
    .end local v6    # "packageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_149
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14f
    sget-object v0, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCategoriesToDB(), successful="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return v3
.end method

.method public updateSingleCategoryToDB(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 39
    sget-object v0, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSingleCategoryToDB(), pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    if-nez p1, :cond_2b

    .line 41
    const-string v2, "updateSingleCategoryToDB(), pkgName is null"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v1

    .line 44
    :cond_2b
    const/4 v2, -0x1

    .line 46
    .local v2, "category":I
    new-instance v3, Lcom/samsung/android/game/network/LocalCache;

    invoke-direct {v3}, Lcom/samsung/android/game/network/LocalCache;-><init>()V

    .line 47
    .local v3, "localCache":Lcom/samsung/android/game/network/LocalCache;
    invoke-virtual {v3}, Lcom/samsung/android/game/network/LocalCache;->getSecGameFamilyPackageNames()Ljava/util/List;

    move-result-object v4

    .line 48
    .local v4, "secGameFamilyPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/samsung/android/game/network/LocalCache;->getGamePackageNames()Ljava/util/List;

    move-result-object v5

    .line 50
    .local v5, "gamePackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/game/CategoryUpdater;->isNonGamePackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 51
    const/4 v2, 0x0

    goto :goto_8e

    .line 52
    :cond_41
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 53
    const/4 v2, 0x3

    goto :goto_8e

    .line 54
    :cond_49
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 55
    const/4 v2, 0x1

    goto :goto_8e

    .line 57
    :cond_51
    const-string v6, "updateSingleCategoryToDB(), try accessing the server"

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v6, Lcom/samsung/android/game/network/NetworkConnector;

    iget-object v7, p0, Lcom/samsung/android/game/CategoryUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/game/network/NetworkConnector;-><init>(Landroid/content/Context;)V

    .line 59
    .local v6, "nc":Lcom/samsung/android/game/network/NetworkConnector;
    invoke-virtual {v6}, Lcom/samsung/android/game/network/NetworkConnector;->isNetworkConnected()Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_6d

    .line 60
    const-string v7, "updateSingleCategoryToDB(), Network is NOT connected. Failed to update"

    invoke-static {v0, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p2, p1, v8}, Lcom/samsung/android/game/CategoryUpdater;->setCategoryToDB(ILjava/lang/String;I)V

    .line 62
    return v1

    .line 65
    :cond_6d
    :try_start_6d
    invoke-virtual {v6, p1}, Lcom/samsung/android/game/network/NetworkConnector;->getSingleCategory(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 66
    .local v7, "responseJson":Lorg/json/JSONObject;
    if-nez v7, :cond_7c

    .line 67
    const-string v9, "updateSingleCategoryToDB(), responseJson was null!"

    invoke-static {v0, v9}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2, p1, v8}, Lcom/samsung/android/game/CategoryUpdater;->setCategoryToDB(ILjava/lang/String;I)V

    .line 69
    return v1

    .line 71
    :cond_7c
    const-string v0, "pkg_type"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "categoryString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/game/CategoryUpdater;->parseCategory(Ljava/lang/String;)I

    move-result v1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_86} :catch_88

    move v2, v1

    .line 75
    .end local v0    # "categoryString":Ljava/lang/String;
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    goto :goto_8e

    .line 73
    :catch_88
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "nc":Lcom/samsung/android/game/network/NetworkConnector;
    :goto_8e
    invoke-direct {p0, p2, p1, v2}, Lcom/samsung/android/game/CategoryUpdater;->setCategoryToDB(ILjava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/samsung/android/game/CategoryUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSingleCategoryToDB(), category="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
