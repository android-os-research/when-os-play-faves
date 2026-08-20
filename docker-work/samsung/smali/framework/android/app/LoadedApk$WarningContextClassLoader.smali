.class Landroid/app/LoadedApk$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static greylist-max-o warned:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1333
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1331
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/LoadedApk$WarningContextClassLoader-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>()V

    return-void
.end method

.method private greylist-max-o warn(Ljava/lang/String;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;

    .line 1336
    sget-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    if-eqz v0, :cond_5

    .line 1337
    return-void

    .line 1339
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    .line 1340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassLoader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": The class loader returned by Thread.getContextClassLoader() may fail for processes that host multiple applications. You should explicitly specify a context class loader. For example: Thread.setContextClassLoader(getClass().getClassLoader());"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void
.end method


# virtual methods
.method public whitelist test-api clearAssertionStatus()V
    .registers 2

    .line 1385
    const-string v0, "clearAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    .line 1387
    return-void
.end method

.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;

    .line 1350
    const-string v0, "getResource"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;

    .line 1360
    const-string v0, "getResourceAsStream"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    const-string v0, "getResources"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1365
    const-string v0, "loadClass"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1370
    const-string/jumbo v0, "setClassAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    .line 1372
    return-void
.end method

.method public whitelist test-api setDefaultAssertionStatus(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1380
    const-string/jumbo v0, "setDefaultAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    .line 1382
    return-void
.end method

.method public whitelist test-api setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1375
    const-string/jumbo v0, "setPackageAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 1377
    return-void
.end method
