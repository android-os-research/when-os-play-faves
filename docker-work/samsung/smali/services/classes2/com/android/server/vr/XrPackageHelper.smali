.class public Lcom/android/server/vr/XrPackageHelper;
.super Ljava/lang/Object;
.source "XrPackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XrPackageHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mOnVrServicePackageListener:Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;

.field public mVrServicePackageAvailable:Z

.field public packageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public static bridge synthetic -$$Nest$misVrServiceEnabled(Lcom/android/server/vr/XrPackageHelper;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/XrPackageHelper;->isVrServiceEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/vr/XrPackageHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/XrPackageHelper$1;-><init>(Lcom/android/server/vr/XrPackageHelper;)V

    iput-object v0, p0, Lcom/android/server/vr/XrPackageHelper;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 28
    iput-object p1, p0, Lcom/android/server/vr/XrPackageHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "XrPackageHelper:"

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mVrServicePackageAvailable="

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-boolean p0, p0, Lcom/android/server/vr/XrPackageHelper;->mVrServicePackageAvailable:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final isVrServiceEnabled()Z
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- XrPackageHelper isVrServiceEnabled getApplicationEnabledSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XrPackageHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_32

    if-ne p0, v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :cond_32
    :goto_32
    return v0
.end method

.method public final isVrServiceInstalled()Z
    .registers 3

    const/4 v0, 0x0

    .line 117
    :try_start_1
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    .line 118
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    return p0

    :catch_e
    return v0
.end method

.method public isVrServicePackageAvailable()Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/android/server/vr/XrPackageHelper;->mVrServicePackageAvailable:Z

    return p0
.end method

.method public register()V
    .registers 6

    .line 32
    iget-object v0, p0, Lcom/android/server/vr/XrPackageHelper;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/vr/XrPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/vr/XrPackageHelper;->isVrServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 34
    invoke-virtual {p0, v4}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_17
    return-void
.end method

.method public setOnVrServicePackageListener(Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/vr/XrPackageHelper;->mOnVrServicePackageListener:Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;

    return-void
.end method

.method public setVrServicePackageState(Z)V
    .registers 3

    .line 39
    iget-boolean v0, p0, Lcom/android/server/vr/XrPackageHelper;->mVrServicePackageAvailable:Z

    if-eq v0, p1, :cond_d

    .line 40
    iput-boolean p1, p0, Lcom/android/server/vr/XrPackageHelper;->mVrServicePackageAvailable:Z

    .line 41
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper;->mOnVrServicePackageListener:Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;

    if-eqz p0, :cond_d

    .line 42
    invoke-interface {p0, p1}, Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;->onVrServicePackageChanged(Z)V

    :cond_d
    return-void
.end method
