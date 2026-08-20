.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CocktailWhisperPolicy"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentWhisperInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLock:Ljava/lang/Object;

.field public mWhisperInfoList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 3

    .line 27
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 22
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    .line 23
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 24
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .registers 10

    .line 105
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 107
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 108
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_3b

    .line 110
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    if-eqz v5, :cond_38

    .line 111
    iget-object v6, v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 112
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 113
    iget-object v7, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onUpdateCocktail(I)V

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 117
    :cond_3b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_3f
    if-ge v3, p1, :cond_55

    .line 119
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 120
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_52

    .line 121
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v4, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onRemoveUpdatableCocktail(I)V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 124
    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 7

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_53

    .line 83
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_21

    const/4 v1, 0x2

    if-eq p2, v1, :cond_21

    const/4 v1, 0x3

    if-eq p2, v1, :cond_17

    goto :goto_4e

    .line 94
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4e

    .line 87
    :cond_21
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    if-eqz p2, :cond_40

    .line 88
    iget-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4e

    .line 90
    :cond_40
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p2

    new-instance v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    invoke-direct {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    :goto_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_17 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public getCocktailType()I
    .registers 1

    const/4 p0, 0x6

    return p0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    if-eqz p4, :cond_b

    .line 59
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-interface {p0, p1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .registers 7

    .line 39
    iget-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 40
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 41
    iget-object p5, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    if-eqz p5, :cond_2b

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v0

    if-eq p3, v0, :cond_1f

    iget p5, p5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    if-ne p3, p5, :cond_2b

    .line 43
    :cond_1f
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-interface {p0, p1, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    const/4 p0, 0x1

    .line 44
    monitor-exit p2

    return p0

    :cond_2b
    const/4 p0, 0x0

    .line 46
    monitor-exit p2

    return p0

    :catchall_2e
    move-exception p0

    .line 48
    monitor-exit p2
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_c

    .line 67
    sget-object p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isMatchedPolicy: cocktail is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 70
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 72
    iget p1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v0, 0x200

    if-eq p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p0, 0x1

    :cond_1a
    :goto_1a
    return p0
.end method
