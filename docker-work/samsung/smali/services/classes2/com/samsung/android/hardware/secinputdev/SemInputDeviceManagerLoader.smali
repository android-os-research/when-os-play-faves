.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerLoader.java"


# static fields
.field public static final SECINPUTDEV_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

.field public static final SECINPUTDEV_SERVICE_JAR_PATH:Ljava/lang/String; = "/system/framework/secinputdev-service.jar"

.field public static final TAG:Ljava/lang/String; = "SemInputDeviceManagerLoader"

.field public static secinputdevClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoadFromJar()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "/system/framework/secinputdev-service.jar"

    invoke-direct {v0, v2, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v1, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

    .line 22
    invoke-virtual {v0, v1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    return-void
.end method

.method public static classLoadFromServices()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    return-void
.end method

.method public static getService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 31
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->classLoadFromJar()V

    .line 34
    :cond_7
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static systemReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string/jumbo v3, "systemReady"

    .line 41
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_16
    const-string v0, "SemInputDeviceManagerLoader"

    const-string/jumbo v1, "systemReady: secinpudevclass is null"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method
