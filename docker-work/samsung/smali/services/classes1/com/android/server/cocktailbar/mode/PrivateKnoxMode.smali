.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxMode.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "PrivateKnoxMode"


# instance fields
.field public mCurrentUserId:I

.field public mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V
    .registers 6

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 29
    iput-object p5, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 30
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.sec.knox.container.action.launchinfo"

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.container.LAUNCH_INFO"

    const/4 p4, 0x0

    .line 32
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getDefinedCocktailType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getDefinedPrivateModeName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "knoxmode"

    return-object p0
.end method

.method public isEnableMode()Z
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 12

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.knox.container.action.launchinfo"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    const/4 v0, -0x1

    const-string/jumbo v2, "userId"

    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 40
    sget-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 41
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTENT_ACTION_LAUNCH_INFO : userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2f
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_39

    return v2

    :cond_39
    const/4 v0, 0x2

    const/16 v3, 0x100

    const/16 v4, 0x64

    if-lt p1, v4, :cond_4b

    .line 50
    iget v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-ge v1, v4, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v3

    :goto_47
    move v8, v0

    move v6, v1

    move v7, v3

    goto :goto_58

    .line 57
    :cond_4b
    iget v5, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-lt v5, v4, :cond_55

    if-ge p1, v4, :cond_55

    move v8, v0

    move v6, v3

    move v7, v6

    goto :goto_58

    :cond_55
    move v6, v1

    move v7, v6

    move v8, v7

    .line 62
    :goto_58
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v4, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/4 v9, 0x0

    move v5, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 64
    iput p1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    return v2

    :cond_64
    return v1
.end method
