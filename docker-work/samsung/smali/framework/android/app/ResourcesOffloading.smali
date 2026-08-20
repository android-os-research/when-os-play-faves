.class public final Landroid/app/ResourcesOffloading;
.super Ljava/lang/Object;
.source "ResourcesOffloading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResourcesOffloading"


# instance fields
.field private blacklist appContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mScheduleEndAppLaunchMarker:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetappContext(Landroid/app/ResourcesOffloading;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesOffloading;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "appContext"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesOffloading;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Landroid/app/ResourcesOffloading;->appContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Landroid/app/ResourcesOffloading;->mScheduleEndAppLaunchMarker:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method private blacklist isProcessValid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_d

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 81
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist resourcesOffloading(Ljava/lang/String;)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Landroid/app/ResourcesOffloading;->isProcessValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 53
    iget-object v0, p0, Landroid/app/ResourcesOffloading;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/app/ResourcesOffloading;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/Resources;->setApplicationContext(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Landroid/app/ResourcesOffloading;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/Resources;->setIfAppLaunching(Z)V

    .line 56
    iget-object v0, p0, Landroid/app/ResourcesOffloading;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_29

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/ResourcesOffloading;->mHandler:Landroid/os/Handler;

    goto :goto_30

    .line 58
    :cond_29
    iget-object v1, p0, Landroid/app/ResourcesOffloading;->mScheduleEndAppLaunchMarker:Ljava/lang/Runnable;

    if-eqz v1, :cond_30

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    :cond_30
    :goto_30
    new-instance v0, Landroid/app/ResourcesOffloading$1;

    invoke-direct {v0, p0}, Landroid/app/ResourcesOffloading$1;-><init>(Landroid/app/ResourcesOffloading;)V

    iput-object v0, p0, Landroid/app/ResourcesOffloading;->mScheduleEndAppLaunchMarker:Ljava/lang/Runnable;

    .line 69
    iget-object v1, p0, Landroid/app/ResourcesOffloading;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_42

    .line 70
    return-void

    .line 72
    :cond_42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;-><init>(Landroid/app/ResourcesOffloading;Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable-IA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_50
    return-void
.end method
