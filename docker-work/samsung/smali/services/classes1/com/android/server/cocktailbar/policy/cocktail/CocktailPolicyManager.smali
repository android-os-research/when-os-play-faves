.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
.super Ljava/lang/Object;
.source "CocktailPolicyManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;,
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    }
.end annotation


# static fields
.field public static final COCKTAIL_STATE_ADD:I = 0x1

.field public static final COCKTAIL_STATE_REMOVE:I = 0x3

.field public static final COCKTAIL_STATE_UPDATE:I = 0x2

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "CocktailPolicyManager"


# instance fields
.field public mCocktailPolicys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

.field public mUpdatableCocktailMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    .line 34
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    .line 35
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result p2

    if-eqz p2, :cond_26

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_2e

    .line 37
    :cond_26
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    :cond_2e
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_3a

    .line 40
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    :cond_3a
    if-eqz p2, :cond_40

    and-int/lit16 p1, p2, 0xa4

    if-eqz p1, :cond_48

    .line 46
    :cond_40
    new-instance p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;

    invoke-direct {p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 48
    :cond_48
    new-instance p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;

    invoke-direct {p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    return-void
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 6

    const/4 p4, 0x0

    if-nez p1, :cond_b

    .line 135
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "canCloseCocktail: cocktail is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 138
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p4

    invoke-virtual {p0, p4, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result p0

    .line 140
    invoke-interface {v0, p1, p2, p3, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z

    move-result p0

    return p0

    :cond_1e
    return p4
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .registers 3

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 6

    const/4 p4, 0x0

    if-nez p1, :cond_b

    .line 121
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "canShowCocktail: cocktail is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 124
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p4

    invoke-virtual {p0, p4, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result p0

    .line 126
    invoke-interface {v0, p1, p2, p3, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z

    move-result p0

    return p0

    :cond_1e
    return p4
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 107
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "canUpdateCocktail: cocktail is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 110
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    .line 112
    invoke-interface/range {v1 .. v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method public changeResumePackage(Ljava/lang/String;I)V
    .registers 3

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 69
    invoke-interface {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->changeResumePackage(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public disableUpdatableCocktail(II)V
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz p0, :cond_d

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->disableUpdate(I)V

    :cond_d
    return-void
.end method

.method public enableUpdatableCocktail(II)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    if-nez v0, :cond_14

    .line 76
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    invoke-direct {v0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;-><init>(I)V

    .line 77
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    :cond_14
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->enableUpdate(I)V

    return-void
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V
    .registers 4

    if-nez p1, :cond_a

    .line 57
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "establishPolicy: cocktail is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 62
    invoke-interface {p0, p1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    :cond_13
    return-void
.end method

.method public final findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .registers 5

    .line 161
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .line 162
    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 164
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPolicy: find policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .registers 4

    .line 148
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .line 149
    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    sget-object p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findMatchedPolicy: find policy = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return-object v0
.end method

.method public isUpdatedCocktail(II)Z
    .registers 3

    .line 90
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz p0, :cond_f

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onDisableUpdatableCocktail(II)V
    .registers 3

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    return-void
.end method

.method public onEanbleUpdatableCocktail(II)V
    .registers 3

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    return-void
.end method

.method public onRemoveUpdatableCocktail(I)V
    .registers 4

    shr-int/lit8 v0, p1, 0x10

    .line 194
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz v1, :cond_17

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 196
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    invoke-interface {p0, p1, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;->onRemoveCocktail(II)V

    :cond_17
    return-void
.end method

.method public onUpdateCocktail(I)V
    .registers 4

    shr-int/lit8 v0, p1, 0x10

    .line 185
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    if-eqz v1, :cond_17

    .line 186
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 187
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    invoke-interface {p0, p1, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;->onUpdateCocktail(II)V

    :cond_17
    return-void
.end method

.method public final setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
