.class public Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateEmergencyMode.java"


# static fields
.field public static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field public static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "PrivateEmergencyMode"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 26
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p3, p1}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getDefinedCocktailType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getDefinedPrivateModeName()Ljava/lang/String;
    .registers 1

    const-string p0, "emergencymode"

    return-object p0
.end method

.method public isEnableMode()Z
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 5

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "reason"

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 36
    sget-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 37
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMERGENCY_STATE_CHANGED : reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_32

    return v0

    :cond_32
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5b

    .line 42
    sget-object p1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start cocktailbarservice"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    const-string v1, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const/4 p0, 0x3

    return p0

    :cond_5b
    const/4 p0, 0x1

    return p0

    :cond_5d
    return v1
.end method
