.class public Lcom/android/server/pm/dex/SystemServerDexLoadReporter;
.super Ljava/lang/Object;
.source "SystemServerDexLoadReporter.java"

# interfaces
.implements Ldalvik/system/BaseDexClassLoader$Reporter;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SystemServerDexLoadReporter"


# instance fields
.field public final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "SystemServerDexLoadReporter"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public static configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V
    .registers 4

    const-string v0, "SystemServerDexLoadReporter"

    const-string v1, "Configuring system server dex reporter"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;

    invoke-direct {v1, p0}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;-><init>(Landroid/content/pm/IPackageManager;)V

    .line 74
    invoke-static {v1}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 75
    const-class p0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 76
    instance-of v1, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_1f

    .line 77
    check-cast p0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0}, Ldalvik/system/BaseDexClassLoader;->reportClassLoaderChain()V

    goto :goto_3b

    .line 79
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System server class loader is not a BaseDexClassLoader. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method


# virtual methods
.method public report(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->DEBUG:Z

    const-string v1, "SystemServerDexLoadReporter"

    if-eqz v0, :cond_1a

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1a
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p0, "Bad call to DexLoadReporter: empty classLoaderContextMap"

    .line 51
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v0, "android"

    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {p0, v0, p1, v1}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
