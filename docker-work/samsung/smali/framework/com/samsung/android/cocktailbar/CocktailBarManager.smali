.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibility;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WakeUp;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final blacklist ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final blacklist ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final blacklist ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final blacklist ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field public static final blacklist ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final blacklist COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final greylist COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final blacklist COCKTAIL_CATEGORY_LOCKSCREEN:I = 0x10

.field public static final blacklist COCKTAIL_DISPLAY_POLICY_ALL:I = 0x8f

.field public static final greylist COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final blacklist COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final blacklist COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final blacklist COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final blacklist COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final blacklist COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final blacklist COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final blacklist EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final blacklist EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final blacklist EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final blacklist INVALID_COCKTAIL_ID:I = 0x0

.field public static final blacklist META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field public static final blacklist PERMISSION_ACCESS_PANEL:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.permission.ACCESS_PANEL"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final blacklist TYPE_WAKEUP_GESTURE_RUB:I = 0x2


# instance fields
.field private blacklist mCocktailBarSize:I

.field private final blacklist mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStateListnerDelegatesLock:Ljava/lang/Object;

.field private final blacklist mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSystemUiVisibilityListenerDelegatesLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegatesLock:Ljava/lang/Object;

    .line 349
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 368
    return-void
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 356
    const-string v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    return-object v0
.end method

.method private blacklist getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v0, :cond_10

    .line 398
    const-string v0, "CocktailBarService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 399
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 401
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v0
.end method


# virtual methods
.method public blacklist activateCocktailBar()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1363
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1364
    return-void

    .line 1367
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1370
    nop

    .line 1371
    return-void

    .line 1368
    :catch_e
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/app/IServiceConnection;
    .param p5, "flags"    # I

    .line 1035
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1036
    const/4 v0, 0x0

    return v0

    .line 1039
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1039
    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_1f

    return v0

    .line 1041
    :catch_1f
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist closeCocktail(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .line 739
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 740
    return-void

    .line 744
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catch_11
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist closeCocktail(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 721
    return-void

    .line 724
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 727
    nop

    .line 728
    return-void

    .line 725
    :catch_10
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist cocktailBarreboot()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1300
    return-void
.end method

.method public blacklist cocktailBarshutdown()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1291
    return-void
.end method

.method public blacklist deactivateCocktailBar()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1381
    return-void

    .line 1384
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1387
    nop

    .line 1388
    return-void

    .line 1385
    :catch_e
    move-exception v0

    .line 1386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disableCocktail(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 844
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 845
    return-void

    .line 848
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 851
    nop

    .line 852
    return-void

    .line 849
    :catch_10
    move-exception v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAllCocktailIds()[I
    .registers 4

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 861
    const/4 v0, 0x0

    return-object v0

    .line 864
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 865
    :catch_f
    move-exception v0

    .line 866
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCategoryFilterStr()Ljava/lang/String;
    .registers 4

    .line 2132
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2133
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string v2, "getCategoryFilterStr getService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-object v1

    .line 2137
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    .line 2138
    :catch_16
    move-exception v0

    .line 2139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2141
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getCocktaiBarWakeUpState()Z
    .registers 4

    .line 1207
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1208
    const/4 v0, 0x0

    return v0

    .line 1211
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 1212
    :catch_f
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 5
    .param p1, "cocktailId"    # I

    .line 877
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 878
    const/4 v0, 0x0

    return-object v0

    .line 881
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 882
    :catch_f
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCocktailBarSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1075
    const/16 v0, 0xa0

    return v0
.end method

.method public blacklist getCocktailBarVisibility()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1309
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1310
    const/4 v0, 0x2

    return v0

    .line 1313
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 1314
    :catch_f
    move-exception v0

    .line 1315
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getCocktailBarWindowType()I
    .registers 4

    .line 1326
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1327
    const/4 v0, 0x0

    return v0

    .line 1330
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 1331
    :catch_11
    move-exception v0

    .line 1332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCocktailId(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 390
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    .line 391
    :catch_12
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCocktailIds(Landroid/content/ComponentName;)[I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 415
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    .line 416
    :catch_12
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 411
    .local v0, "cocktailIds":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 412
    return-object v0
.end method

.method public blacklist getConfigVersion()I
    .registers 4

    .line 2102
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 2103
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string v2, "getConfigVersion getService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return v1

    .line 2107
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getConfigVersion()I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v0

    .line 2108
    :catch_16
    move-exception v0

    .line 2109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2111
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist getContext()Landroid/content/Context;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getEnabledCocktailIds()[I
    .registers 4

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 828
    const/4 v0, 0x0

    return-object v0

    .line 831
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getEnabledCocktailIds()[I

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 832
    :catch_f
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getHideEdgeListStr()Ljava/lang/String;
    .registers 4

    .line 2147
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2148
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string v2, "getHideEdgeListStr getService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-object v1

    .line 2152
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getHideEdgeListStr()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    .line 2153
    :catch_16
    move-exception v0

    .line 2154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2156
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getPreferWidth()I
    .registers 4

    .line 2117
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 2118
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string v2, "getPreferWidth getService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    return v1

    .line 2122
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getPreferWidth()I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v0

    .line 2123
    :catch_16
    move-exception v0

    .line 2124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2126
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist isAllowTransientBarCocktailBar()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCocktailBarShifted()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCocktailEnabled(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 443
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 447
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    .line 448
    :catch_12
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isEnabledCocktail(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 432
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    .line 433
    :catch_12
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImmersiveMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1233
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyCocktailViewDataChanged(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .line 758
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 759
    return-void

    .line 762
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 765
    nop

    .line 766
    return-void

    .line 763
    :catch_10
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyCocktailVisibiltyChanged(II)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .line 987
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 988
    return-void

    .line 990
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 992
    .local v0, "identityToken":J
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_17
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    nop

    .line 998
    return-void

    .line 996
    :catchall_15
    move-exception v2

    goto :goto_20

    .line 993
    :catch_17
    move-exception v2

    .line 994
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_18
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "identityToken":J
    .end local p0    # "this":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .end local p1    # "cocktailId":I
    .end local p2    # "visibility":I
    throw v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 996
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "identityToken":J
    .restart local p0    # "this":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .restart local p1    # "cocktailId":I
    .restart local p2    # "visibility":I
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    throw v2
.end method

.method public blacklist notifyKeyguardState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 958
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 959
    return-void

    .line 962
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 965
    nop

    .line 966
    return-void

    .line 963
    :catch_e
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 626
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 627
    return-void

    .line 630
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 633
    nop

    .line 634
    return-void

    .line 631
    :catch_10
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist partiallyUpdateHelpView(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 647
    return-void

    .line 650
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catch_10
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1472
    return-void

    .line 1474
    :cond_7
    if-nez p1, :cond_12

    .line 1475
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1478
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    const/4 v1, 0x0

    .line 1480
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1481
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1482
    move-object v1, v3

    .line 1483
    goto :goto_37

    .line 1485
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1486
    :cond_37
    :goto_37
    if-nez v1, :cond_45

    .line 1487
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V

    move-object v1, v2

    .line 1488
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    :cond_45
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1491
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_88

    .line 1493
    .local v2, "cm":Landroid/content/ComponentName;
    :try_start_58
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener : registerCocktailBarStateListenerCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1494
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1493
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_7c} :catch_7d
    .catchall {:try_start_58 .. :try_end_7c} :catchall_88

    .line 1498
    goto :goto_86

    .line 1496
    :catch_7d
    move-exception v3

    .line 1497
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7e
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListener : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_86
    monitor-exit v0

    .line 1500
    return-void

    .line 1499
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_88

    throw v1
.end method

.method public greylist registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2037
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2038
    return-void

    .line 2040
    :cond_7
    if-nez p1, :cond_12

    .line 2041
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerOnFeedsUpdatedListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return-void

    .line 2044
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "registerOnFeedsUpdatedListener not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerStateListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;)V
    .registers 8
    .param p1, "stateChangedlistener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    .line 1635
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1636
    return-void

    .line 1638
    :cond_7
    if-nez p1, :cond_12

    .line 1639
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    return-void

    .line 1642
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    const/4 v1, 0x0

    .line 1644
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1645
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1646
    move-object v1, v3

    .line 1647
    goto :goto_37

    .line 1649
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1650
    :cond_37
    :goto_37
    if-nez v1, :cond_45

    .line 1651
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;Landroid/os/Handler;)V

    move-object v1, v2

    .line 1652
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_45
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1655
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_88

    .line 1657
    .local v2, "cm":Landroid/content/ComponentName;
    :try_start_58
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener : registerCocktailBarStateListenerCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1658
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1657
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_7c} :catch_7d
    .catchall {:try_start_58 .. :try_end_7c} :catchall_88

    .line 1662
    goto :goto_86

    .line 1660
    :catch_7d
    move-exception v3

    .line 1661
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7e
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListener : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_86
    monitor-exit v0

    .line 1664
    return-void

    .line 1663
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_88

    throw v1
.end method

.method public whitelist registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .registers 8
    .param p1, "semStateChangedlistener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1550
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1551
    return-void

    .line 1554
    :cond_7
    if-nez p1, :cond_12

    .line 1555
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1559
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1560
    const/4 v1, 0x0

    .line 1561
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1562
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_42

    .line 1563
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;

    if-eqz v4, :cond_42

    .line 1565
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;

    iget-object v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1564
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1566
    move-object v1, v3

    .line 1567
    goto :goto_43

    .line 1569
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_42
    goto :goto_1c

    .line 1570
    :cond_43
    :goto_43
    if-nez v1, :cond_56

    .line 1571
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;

    invoke-direct {v2, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;-><init>(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    .line 1573
    .local v2, "stateChangedlistener":Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;Landroid/os/Handler;)V

    move-object v1, v3

    .line 1574
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    .end local v2    # "stateChangedlistener":Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;
    :cond_56
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1577
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_16 .. :try_end_69} :catchall_99

    .line 1579
    .local v2, "cm":Landroid/content/ComponentName;
    :try_start_69
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener : registerCocktailBarStateListenerCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1579
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_8d} :catch_8e
    .catchall {:try_start_69 .. :try_end_8d} :catchall_99

    .line 1584
    goto :goto_97

    .line 1582
    :catch_8e
    move-exception v3

    .line 1583
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_8f
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListener : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1585
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_97
    monitor-exit v0

    .line 1586
    return-void

    .line 1585
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public blacklist registerSystemUiVisibilityListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;)V
    .registers 8
    .param p1, "systemUiVisibilitylistener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    .line 1893
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1894
    return-void

    .line 1896
    :cond_7
    if-nez p1, :cond_12

    .line 1897
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return-void

    .line 1900
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1901
    const/4 v1, 0x0

    .line 1902
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    .line 1903
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1904
    move-object v1, v3

    .line 1905
    goto :goto_37

    .line 1907
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1908
    :cond_37
    :goto_37
    if-nez v1, :cond_45

    .line 1909
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;Landroid/os/Handler;)V

    move-object v1, v2

    .line 1911
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    :cond_45
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1914
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_88

    .line 1916
    .local v2, "cm":Landroid/content/ComponentName;
    :try_start_58
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener : registerSystemUiVisibilityListenerCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1917
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1916
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerSystemUiVisibilityListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_7c} :catch_7d
    .catchall {:try_start_58 .. :try_end_7c} :catchall_88

    .line 1921
    goto :goto_86

    .line 1919
    :catch_7d
    move-exception v3

    .line 1920
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7e
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListener : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1922
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_86
    monitor-exit v0

    .line 1923
    return-void

    .line 1922
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_88

    throw v1
.end method

.method public blacklist removeCocktailUIService()V
    .registers 4

    .line 1274
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1275
    return-void

    .line 1278
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1281
    nop

    .line 1282
    return-void

    .line 1279
    :catch_e
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist requestToDisableCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .line 909
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 910
    const/4 v0, 0x0

    return v0

    .line 913
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 914
    :catch_f
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist requestToDisableCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .line 941
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 942
    const/4 v0, 0x0

    return v0

    .line 945
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 946
    :catch_f
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist requestToUpdateCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .line 893
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 894
    const/4 v0, 0x0

    return v0

    .line 897
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 898
    :catch_f
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist requestToUpdateCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 926
    const/4 v0, 0x0

    return v0

    .line 929
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 930
    :catch_f
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendDragEvent(ILandroid/view/DragEvent;)V
    .registers 3
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1010
    return-void
.end method

.method public blacklist sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extraData"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1256
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1257
    return-void

    .line 1260
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1263
    nop

    .line 1264
    return-void

    .line 1261
    :catch_e
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist setCocktailBarStatus(ZZ)V
    .registers 3
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1426
    return-void
.end method

.method public blacklist setCocktailBarWakeUpState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1190
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1191
    return-void

    .line 1194
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarWakeUpState(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1197
    nop

    .line 1198
    return-void

    .line 1195
    :catch_e
    move-exception v0

    .line 1196
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setDisableTickerView(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    return-void
.end method

.method public blacklist setEnabledCocktailIds([I)V
    .registers 5
    .param p1, "cocktailIds"    # [I

    .line 810
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 811
    return-void

    .line 814
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setEnabledCocktailIds([I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 817
    nop

    .line 818
    return-void

    .line 815
    :catch_e
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist setOnPullPendingIntent(IILandroid/app/PendingIntent;)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 777
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 778
    return-void

    .line 781
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 784
    nop

    .line 785
    return-void

    .line 782
    :catch_10
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist showAndLockCocktailBar()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1344
    return-void
.end method

.method public whitelist showCocktail(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .line 700
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 701
    return-void

    .line 704
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 707
    nop

    .line 708
    return-void

    .line 705
    :catch_10
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist switchDefaultCocktail()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    return-void
.end method

.method public blacklist unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 1056
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1057
    return-void

    .line 1060
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1063
    nop

    .line 1064
    return-void

    .line 1061
    :catch_e
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unlockCocktailBar(I)V
    .registers 2
    .param p1, "visibility"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1354
    return-void
.end method

.method public greylist unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1511
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1512
    return-void

    .line 1514
    :cond_7
    if-nez p1, :cond_12

    .line 1515
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1518
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    const/4 v1, 0x0

    .line 1520
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1521
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1522
    move-object v1, v3

    .line 1523
    goto :goto_37

    .line 1525
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1526
    :cond_37
    :goto_37
    if-nez v1, :cond_43

    .line 1527
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterListener : cannot find the listener"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_7b

    return-void

    .line 1531
    :cond_43
    :try_start_43
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener : unregisterCocktailBarStateListenerCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1532
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1531
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1534
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->onDestroy()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_6f} :catch_70
    .catchall {:try_start_43 .. :try_end_6f} :catchall_7b

    .line 1538
    goto :goto_79

    .line 1536
    :catch_70
    move-exception v2

    .line 1537
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_79
    monitor-exit v0

    .line 1540
    return-void

    .line 1539
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public greylist unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2057
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2058
    return-void

    .line 2060
    :cond_7
    if-nez p1, :cond_12

    .line 2061
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterOnFeedsUpdatedListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    return-void

    .line 2064
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unregisterOnFeedsUpdatedListener not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterStateListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;)V
    .registers 7
    .param p1, "stateChangedlistener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    .line 1673
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1674
    return-void

    .line 1676
    :cond_7
    if-nez p1, :cond_12

    .line 1677
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void

    .line 1680
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1681
    const/4 v1, 0x0

    .line 1682
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1683
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1684
    move-object v1, v3

    .line 1685
    goto :goto_37

    .line 1687
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1688
    :cond_37
    :goto_37
    if-nez v1, :cond_43

    .line 1689
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterListener : cannot find the listener"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_7b

    return-void

    .line 1693
    :cond_43
    :try_start_43
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener : unregisterCocktailBarStateListenerCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1694
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1693
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1696
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1697
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->onDestroy()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_6f} :catch_70
    .catchall {:try_start_43 .. :try_end_6f} :catchall_7b

    .line 1700
    goto :goto_79

    .line 1698
    :catch_70
    move-exception v2

    .line 1699
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1701
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_79
    monitor-exit v0

    .line 1702
    return-void

    .line 1701
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public whitelist unregisterStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .registers 7
    .param p1, "stateChangedlistener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1596
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1597
    return-void

    .line 1599
    :cond_7
    if-nez p1, :cond_12

    .line 1600
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-void

    .line 1603
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    const/4 v1, 0x0

    .line 1605
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1606
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    if-eqz v3, :cond_42

    .line 1607
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;

    if-eqz v4, :cond_42

    .line 1609
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;

    iget-object v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1608
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1610
    move-object v1, v3

    .line 1611
    goto :goto_43

    .line 1613
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_42
    goto :goto_1c

    .line 1614
    :cond_43
    :goto_43
    if-nez v1, :cond_4f

    .line 1615
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterListener : cannot find the listener"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_87

    return-void

    .line 1619
    :cond_4f
    :try_start_4f
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener : unregisterCocktailBarStateListenerCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1620
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1619
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1622
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->onDestroy()V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_7b} :catch_7c
    .catchall {:try_start_4f .. :try_end_7b} :catchall_87

    .line 1626
    goto :goto_85

    .line 1624
    :catch_7c
    move-exception v2

    .line 1625
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7d
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_85
    monitor-exit v0

    .line 1628
    return-void

    .line 1627
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_87

    throw v1
.end method

.method public blacklist unregisterSystemUiVisibilityListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;)V
    .registers 7
    .param p1, "systemUiVisibilitylistener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    .line 1931
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1932
    return-void

    .line 1934
    :cond_7
    if-nez p1, :cond_12

    .line 1935
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return-void

    .line 1938
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1939
    const/4 v1, 0x0

    .line 1940
    .local v1, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    .line 1941
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1942
    move-object v1, v3

    .line 1943
    goto :goto_37

    .line 1945
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    :cond_36
    goto :goto_1c

    .line 1946
    :cond_37
    :goto_37
    if-nez v1, :cond_43

    .line 1947
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterListener : cannot find the listener"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_7b

    return-void

    .line 1951
    :cond_43
    :try_start_43
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener : unregisterSystemUiVisibilityListenerCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 1952
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1951
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterSystemUiVisibilityListenerCallback(Landroid/os/IBinder;)V

    .line 1954
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mSystemUiVisibilityListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1955
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->onDestroy()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_6f} :catch_70
    .catchall {:try_start_43 .. :try_end_6f} :catchall_7b

    .line 1958
    goto :goto_79

    .line 1956
    :catch_70
    move-exception v2

    .line 1957
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    .end local v1    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_79
    monitor-exit v0

    .line 1960
    return-void

    .line 1959
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public greylist updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "contentInfo"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 532
    return-void

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 536
    .local v0, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 537
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 538
    invoke-virtual {v1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v1, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 543
    .local v1, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_39} :catch_3b

    .line 546
    .end local v1    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 547
    return-void

    .line 544
    :catch_3b
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;

    .line 465
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_20

    .line 466
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktail : service is not running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 469
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 471
    .local v0, "configuration":Landroid/content/res/Configuration;
    :try_start_2a
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 472
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 474
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 476
    invoke-virtual {v1, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 478
    .local v1, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_52} :catch_54

    .line 481
    .end local v1    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 482
    return-void

    .line 479
    :catch_54
    move-exception v1

    .line 480
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 564
    return-void

    .line 566
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 568
    .local v0, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 569
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 570
    invoke-virtual {v1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 571
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 572
    invoke-virtual {v1, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 573
    invoke-virtual {v1, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 574
    invoke-virtual {v1, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 576
    .local v1, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_3f

    .line 579
    .end local v1    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 580
    return-void

    .line 577
    :catch_3f
    move-exception v1

    .line 578
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .param p7, "classInfo"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 598
    return-void

    .line 600
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 602
    .local v0, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 603
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 604
    invoke-virtual {v1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 605
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 606
    invoke-virtual {v1, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 607
    invoke-virtual {v1, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 608
    invoke-virtual {v1, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 609
    invoke-virtual {v1, p7}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 611
    .local v1, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_41} :catch_43

    .line 614
    .end local v1    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 615
    return-void

    .line 612
    :catch_43
    move-exception v1

    .line 613
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist updateCocktail(IIILjava/lang/Class;Landroid/os/Bundle;Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p5, "contentInfo"    # Landroid/os/Bundle;
    .param p6, "helpView"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .line 497
    .local p4, "panelClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;>;"
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_20

    .line 498
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktail : service is not running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 501
    :cond_20
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, "classInfo":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 504
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_33
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 505
    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 506
    invoke-virtual {v2, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 507
    invoke-virtual {v2, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 508
    invoke-virtual {v2, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 509
    invoke-virtual {v2, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 510
    invoke-virtual {v2, v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    .line 512
    .local v2, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_5f} :catch_61

    .line 515
    .end local v2    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 516
    return-void

    .line 513
    :catch_61
    move-exception v2

    .line 514
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist updateCocktailBarPosition(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1434
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1435
    return-void

    .line 1438
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1441
    nop

    .line 1442
    return-void

    .line 1439
    :catch_e
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateCocktailBarStateFromSystem(I)V
    .registers 2
    .param p1, "windowType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    return-void
.end method

.method public blacklist updateCocktailBarVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 1398
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1399
    return-void

    .line 1402
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1405
    nop

    .line 1406
    return-void

    .line 1403
    :catch_e
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateCocktailBarWindowType(I)V
    .registers 5
    .param p1, "windowType"    # I

    .line 1452
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1453
    return-void

    .line 1456
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarWindowType(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    .line 1459
    nop

    .line 1460
    return-void

    .line 1457
    :catch_14
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist updateCocktailHelpView(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;

    .line 681
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 682
    return-void

    .line 685
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 688
    nop

    .line 689
    return-void

    .line 686
    :catch_10
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist updateCocktailView(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .line 663
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 664
    return-void

    .line 667
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_10

    .line 670
    nop

    .line 671
    return-void

    .line 668
    :catch_10
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist updateFeeds(ILjava/util/List;)V
    .registers 5
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 794
    return-void

    .line 796
    :cond_7
    if-nez p2, :cond_12

    .line 797
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeeds : feedsInfoList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 800
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "updateFeeds not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist updateLongpressGesture(Z)V
    .registers 2
    .param p1, "bEnable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    return-void
.end method

.method public blacklist updateSysfsBarLength(I)V
    .registers 2
    .param p1, "barLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    return-void
.end method

.method public blacklist updateSysfsDeadZone(I)V
    .registers 2
    .param p1, "deadzone"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    return-void
.end method

.method public blacklist updateSysfsGripDisable(Z)V
    .registers 2
    .param p1, "bDisable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1171
    return-void
.end method

.method public blacklist updateWakeupArea(I)V
    .registers 5
    .param p1, "area"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1120
    return-void

    .line 1123
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupArea(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1126
    nop

    .line 1127
    return-void

    .line 1124
    :catch_e
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateWakeupGesture(IZ)V
    .registers 6
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .line 1100
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1101
    return-void

    .line 1104
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1107
    nop

    .line 1108
    return-void

    .line 1105
    :catch_e
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist wakeupCocktailBar(ZII)V
    .registers 4
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .line 1181
    return-void
.end method
