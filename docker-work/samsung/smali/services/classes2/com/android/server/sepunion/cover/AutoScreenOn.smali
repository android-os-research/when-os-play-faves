.class public Lcom/android/server/sepunion/cover/AutoScreenOn;
.super Ljava/lang/Object;
.source "AutoScreenOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;
    }
.end annotation


# static fields
.field public static final SETTINGS_KEY_AUTO_SCREEN_ON:Ljava/lang/String; = "auto_screen_on"

.field public static final SETTINGS_VALUE_AUTO_SCREEN_ON_DISABLED:I = 0x0

.field public static final SETTINGS_VALUE_AUTO_SCREEN_ON_ENABLED:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAutoScreenOnFeature:Z

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mIsAutoScreenOn:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNfcAuthEnabled:Z

.field public mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/AutoScreenOn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/AutoScreenOn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 33
    iput-object p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.sec.feature.cover.autoscreenon"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->init(Landroid/os/Looper;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, " Current AutoScreenOn State:"

    .line 60
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 62
    :try_start_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mAutoScreenOn = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  "

    .line 64
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    monitor-exit p1

    return-void

    :catchall_45
    move-exception p0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final init(Landroid/os/Looper;)V
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    new-instance v0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;-><init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    .line 71
    iget-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "auto_screen_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    return-void
.end method

.method public off()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public support()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public update()V
    .registers 6

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_screen_on"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_10

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 56
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
