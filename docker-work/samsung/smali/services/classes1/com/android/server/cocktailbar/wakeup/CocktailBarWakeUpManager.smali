.class public Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;
.super Ljava/lang/Object;
.source "CocktailBarWakeUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
    }
.end annotation


# static fields
.field public static final COCKTAILBAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field public static final TAG:Ljava/lang/String; = "CocktailBarWakeUpManager"


# instance fields
.field public final FEATURE_ENABLE_EDGE_FEEDS:Z

.field public final SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

.field public cpuFreq:I

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCocktaiBarWakeUpState:Z

.field public mContext:Landroid/content/Context;

.field public mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mTm:Landroid/telephony/TelephonyManager;

.field public supportedBUSFreqTable:[I

.field public supportedCPUCoreTable:[I

.field public supportedGPUFreqTable:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    const/16 v1, 0x3e8

    .line 41
    iput v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

    .line 49
    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const-string p2, "activity"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 52
    iget-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 53
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    const-string p2, "-edgefeeds"

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    :cond_3c
    const/4 v0, 0x1

    :cond_3d
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->prepareBooster()V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setupWakeup()V

    return-void
.end method


# virtual methods
.method public final applyBooster(I)V
    .registers 2

    return-void
.end method

.method public getWakeUpState()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return p0
.end method

.method public final isAllowedWakeUpCocktailBar()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final prepareBooster()V
    .registers 2

    .line 60
    iget-boolean p0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez p0, :cond_c

    .line 61
    sget-object p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "prepareBooster : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public setWakeUpState(Z)V
    .registers 5

    .line 94
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez v0, :cond_d

    .line 95
    sget-object p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setWakeUpState : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_d
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWakeUpState : wakeUpOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return-void
.end method

.method public final setupWakeup()V
    .registers 3

    .line 67
    iget-object p0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    return-void
.end method

.method public wakeupCocktailBar(ZII)V
    .registers 7

    .line 72
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez v0, :cond_d

    .line 73
    sget-object p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "wakeupCocktailBar : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_d
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeupCocktailBar : wakeUpOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_44

    .line 80
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->isAllowedWakeUpCocktailBar()Z

    move-result p1

    if-eqz p1, :cond_4d

    const/16 p1, 0x3e8

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->applyBooster(I)V

    .line 82
    iget-object p0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V

    goto :goto_4d

    .line 85
    :cond_44
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_51

    .line 89
    :cond_4d
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p0
.end method
