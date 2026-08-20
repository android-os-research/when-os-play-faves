.class public abstract Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;
.super Ljava/lang/Object;
.source "CoreStatePreferenceObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "CoreStatePreferenceObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSharedPrefKeyTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vR56y0qISLSm5KBAIqeQB7cHO8c(Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;ILjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->lambda$setPreference$0(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$setPreference$0(ILjava/lang/Runnable;)V
    .registers 3

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getSharedPreference()Landroid/content/SharedPreferences;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    .line 120
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final populate(Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 64
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 67
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_a

    .line 69
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_3d

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 72
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_3e

    .line 74
    :cond_35
    sget-object v3, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "populate: failed to get getSharedPreference"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v3, v1

    .line 77
    :goto_3e
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4d

    .line 78
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4e

    :cond_4d
    move v5, v1

    .line 79
    :goto_4e
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v3, v5, :cond_a

    .line 80
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto :goto_a

    :cond_59
    return v2
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .registers 3

    .line 58
    iget-object p2, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 90
    invoke-interface {p0}, Lcom/samsung/android/server/corestate/CoreStateObserver;->registerObservingItems()V

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 9

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_f

    .line 97
    sget-object p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setPreference: failed to get SharedPreference"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 103
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    :cond_20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p4, :cond_37

    if-eqz p5, :cond_2d

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    goto :goto_37

    .line 110
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_37
    :goto_37
    return-void
.end method
