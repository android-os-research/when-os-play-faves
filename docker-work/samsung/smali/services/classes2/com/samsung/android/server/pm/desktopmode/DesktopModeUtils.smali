.class public Lcom/samsung/android/server/pm/desktopmode/DesktopModeUtils;
.super Ljava/lang/Object;
.source "DesktopModeUtils.java"


# static fields
.field public static final DEX_DISPLAY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterHomeActivitiesByDesktopMode(ZLjava/lang/String;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    const/4 v2, 0x0

    if-ltz v0, :cond_2b

    .line 37
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 38
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_28

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz p0, :cond_24

    .line 41
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 46
    :cond_24
    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v2

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2b
    return v2
.end method

.method public static isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z
    .registers 2

    const-string v0, "android.intent.action.MAIN"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isReplacingPreferredBlockedByDesktopMode(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;ZLjava/lang/String;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 61
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, p0

    goto :goto_11

    :cond_10
    move p1, v0

    :goto_11
    if-nez p1, :cond_17

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    return p0
.end method

.method public static sendSessionCommitBroadcastToDesktopLauncherIfNeeded(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/util/function/Supplier;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            "I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_3c

    if-eqz p1, :cond_3c

    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 78
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string p5, "android.content.pm.action.SESSION_COMMITTED"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p5, "android.content.pm.extra.SESSION"

    .line 80
    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    const-string p5, "android.intent.extra.USER"

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3c
    return-void
.end method
