.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    }
.end annotation


# static fields
.field public static final COCKTAIL_BAR_SEPARATER:C = ';'

.field public static final TAG:Ljava/lang/String; = "CocktailBarSettings"


# instance fields
.field public mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public mEnabledCocktailsStrCache:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCocktailMap(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEnabledCocktailListLocked(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    .line 61
    iput p3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    return-void
.end method

.method public static isLocalBinder()Z
    .registers 2

    .line 277
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 253
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 254
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 255
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-eqz v3, :cond_1a

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 260
    iget v2, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 265
    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-eqz v2, :cond_49

    .line 268
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 269
    iget v0, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 273
    :cond_6f
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-eqz v2, :cond_b

    .line 133
    iget v2, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2b
    return-object v0
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    const-string v2, "cocktail_bar_enabled_cocktails"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object p0
.end method

.method public final initCocktailMap(Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 70
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_38

    .line 72
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 73
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 75
    new-instance v5, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;-><init>(ILjava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 79
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public isEnabledCocktail(I)Z
    .registers 7

    .line 196
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 198
    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-nez v4, :cond_4a

    if-nez v1, :cond_3c

    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isEnabledCocktail: invalid "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " for cid="

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 205
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3c
    const-string v4, " ["

    .line 207
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 210
    :cond_4a
    iget v3, v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    if-ne v3, p1, :cond_a

    const/4 p0, 0x1

    .line 211
    monitor-exit v0

    return p0

    :cond_51
    if-eqz v1, :cond_5c

    .line 215
    sget-object p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const/4 p0, 0x0

    .line 217
    monitor-exit v0

    return p0

    :catchall_5f
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .registers 7

    .line 222
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 224
    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-nez v4, :cond_4a

    if-nez v1, :cond_3c

    .line 229
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isEnabledCocktail: invalid "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " for pName="

    .line 230
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3c
    const-string v4, " ["

    .line 233
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 236
    :cond_4a
    iget-object v3, v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 p0, 0x1

    .line 237
    monitor-exit v0

    return p0

    :cond_55
    if-eqz v1, :cond_60

    .line 241
    sget-object p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 p0, 0x0

    .line 243
    monitor-exit v0

    return p0

    :catchall_63
    move-exception p0

    .line 244
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final putEnabledCocktailsStr(Ljava/lang/String;)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    const-string v2, "cocktail_bar_enabled_cocktails"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 117
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 118
    sget-object p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putEnabledCocktailsStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    return-void
.end method

.method public setEnabledCocktailsLocked(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1f

    if-lez v2, :cond_13

    const/16 v3, 0x3b

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 101
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 103
    iget-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "previous_enable_list"

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 106
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "previous_enable_id_cnt"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_50} :catch_51

    goto :goto_6d

    :catch_51
    move-exception p0

    .line 110
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabledCocktailsLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final updateEnabledCocktailList()V
    .registers 3

    .line 140
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 143
    monitor-exit v0

    goto :goto_1b

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw p0

    .line 145
    :cond_11
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1b
    return-void
.end method

.method public final updateEnabledCocktailListLocked()Z
    .registers 10

    .line 167
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    return v3

    .line 172
    :cond_11
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    move v0, v3

    .line 173
    :goto_17
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_79

    .line 174
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    if-eqz v5, :cond_34

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 179
    :cond_34
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getConvertedComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 181
    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateEnabledCocktailListLocked chagned old = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",new="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",info="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_67

    move v2, v4

    goto :goto_68

    :cond_67
    move v2, v3

    :goto_68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_77

    .line 183
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    move v0, v4

    goto :goto_17

    :cond_79
    if-eqz v0, :cond_7e

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 191
    :cond_7e
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    return v4
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    return-void
.end method
