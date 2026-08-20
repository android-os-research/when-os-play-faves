.class public Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
.super Ljava/lang/Object;
.source "CocktailBarModeManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;


# static fields
.field public static final COCKTAIL_MODE_KNOX:I = 0x2

.field public static final COCKTAIL_MODE_KNOX_COM:I = 0x3

.field public static final COCKTAIL_MODE_NORMAL:I = 0x1

.field public static final COCKTAIL_MODE_PRIVATE_MODE:I = 0x10000

.field public static final COCKTAIL_MODE_UNKNOWN:I = 0x0

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "CocktailBarModeManager"


# instance fields
.field public mCocktailBarModeId:I

.field public mContext:Landroid/content/Context;

.field public mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field public mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field public mNextPrivateModeId:I

.field public mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field public mPrivateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field

.field public mPrivateModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .registers 11

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    .line 45
    iput p4, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 61
    new-instance p1, Lcom/android/server/cocktailbar/mode/NormalMode;

    invoke-direct {p1}, Lcom/android/server/cocktailbar/mode/NormalMode;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 62
    new-instance p1, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    const/4 v2, 0x2

    move-object v0, p1

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 65
    new-instance p1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    iget-object p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int p4, v1, v0

    invoke-direct {p1, p2, p4, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 68
    :cond_50
    iget-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method


# virtual methods
.method public getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .registers 4

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 115
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 116
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_e

    goto :goto_33

    .line 108
    :cond_21
    iget-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 109
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_33

    .line 111
    :cond_2c
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_33

    .line 105
    :cond_2f
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return-object v0
.end method

.method public getCocktailBarMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    return-object p0
.end method

.method public getCocktailBarModeName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    .line 90
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 91
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_9

    .line 92
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentModeId()I
    .registers 1

    .line 169
    iget p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    return p0
.end method

.method public isDisableCocktailBarMode(I)Z
    .registers 3

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_f

    .line 133
    invoke-interface {p0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailBarType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p1, 0x1

    :cond_f
    return p1
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)Z
    .registers 7

    .line 139
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 140
    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 141
    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v2

    if-eq v2, v3, :cond_35

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2e

    const/4 v4, 0x3

    if-eq v2, v4, :cond_26

    goto :goto_6

    .line 147
    :cond_26
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return v3

    .line 144
    :cond_2e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :cond_35
    return v3

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 6

    if-eqz p2, :cond_39

    .line 193
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 194
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onResetMode(IILjava/lang/String;)V

    const/4 p1, 0x1

    .line 195
    iput p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 196
    sget-boolean p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz p0, :cond_39

    .line 197
    new-instance p0, Ljava/lang/StringBuffer;

    sget-object p1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "onResetMode: "

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method public onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 8

    if-eqz p2, :cond_61

    .line 174
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-eq v0, v1, :cond_61

    .line 175
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 177
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 179
    :cond_1d
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    .line 179
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 181
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 182
    sget-boolean p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz p0, :cond_61

    .line 183
    new-instance p0, Ljava/lang/StringBuffer;

    const-string/jumbo p1, "onSetMode: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_47

    .line 184
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_47
    const-string p1, " no-current"

    :goto_49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " -> "

    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    sget-object p1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 8

    if-eqz p2, :cond_5c

    .line 207
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 209
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 211
    :cond_15
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    .line 211
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 213
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 214
    sget-boolean p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz p0, :cond_5c

    .line 215
    new-instance p0, Ljava/lang/StringBuffer;

    sget-object p1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "onSetModeForcely: "

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_44
    const-string v0, " no-current"

    :goto_46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " -> "

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void
.end method

.method public refreshCocktailBarMode()I
    .registers 3

    .line 81
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 82
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 83
    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->renewMode(I)I

    move-result v0

    goto :goto_8

    :cond_19
    return v0
.end method

.method public resetMode(II)V
    .registers 3

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method public setMode(II)V
    .registers 3

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method public final setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 73
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 76
    :cond_1b
    sget-object p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupPrivateMode : exist duplicated privateMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method
