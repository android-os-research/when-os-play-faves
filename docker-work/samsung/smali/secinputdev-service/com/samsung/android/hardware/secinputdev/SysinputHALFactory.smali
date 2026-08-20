.class public Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;
.super Ljava/lang/Object;
.source "SysinputHALFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SysinputHALFactory"

.field private static final halPackageName:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.SysinputHAL"

.field private static volatile hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectHidl()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    .registers 2

    .line 40
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    if-nez v0, :cond_33

    .line 41
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    if-nez v1, :cond_2e

    .line 43
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->connectHidlV1_3()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 44
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    if-eqz v1, :cond_19

    .line 45
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    monitor-exit v0

    return-object v1

    .line 46
    :cond_19
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->connectHidlV1_2()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 47
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    if-eqz v1, :cond_27

    .line 48
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    monitor-exit v0

    return-object v1

    .line 49
    :cond_27
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALEmpty;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALEmpty;-><init>()V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 51
    :cond_2e
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1

    .line 53
    :cond_33
    :goto_33
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    return-object v0
.end method

.method private static connectHidlV1_2()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    .registers 1

    .line 61
    const-string v0, "com.samsung.android.hardware.secinputdev.SysinputHAL_V1_2"

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    move-result-object v0

    return-object v0
.end method

.method private static connectHidlV1_3()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    .registers 1

    .line 57
    const-string v0, "com.samsung.android.hardware.secinputdev.SysinputHAL_V1_3"

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 66
    const-string v0, ", "

    const-string v1, "getInterface: "

    const-string v2, "SysinputHALFactory"

    :try_start_6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, "sysinputHALClass":Ljava/lang/Class;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 69
    .local v5, "constructor":Ljava/lang/reflect/Constructor;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_37} :catch_b9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_37} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_37} :catch_7a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_37} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_37} :catch_38

    return-object v4

    .line 80
    .end local v3    # "sysinputHALClass":Ljava/lang/Class;
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_38
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_cf

    .line 77
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_59
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_ce

    .line 74
    :catch_7a
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_ce

    .line 72
    :catch_9b
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_ce

    .line 70
    :catch_b9
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_ce
    nop

    .line 84
    :goto_cf
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerCallback(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;)V
    .registers 10
    .param p0, "raw"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 19
    const-string v0, "registerCallback: "

    const-string v1, "SysinputHALFactory"

    :try_start_4
    const-string v2, "com.samsung.android.hardware.secinputdev.SysinputHALCallback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 20
    .local v2, "callbackClass":Ljava/lang/Class;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 22
    .local v4, "param":[Ljava/lang/Class;
    const-string v5, "getInstance"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 23
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/HwBinder;

    .line 24
    .local v3, "binder":Landroid/os/HwBinder;
    sget-object v6, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    if-eqz v6, :cond_ae

    .line 25
    sget-object v6, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->hidl:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v6, v3}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->registerCallback(Landroid/os/HwBinder;)V
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_50} :catch_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_50} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_50} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_50} :catch_51

    goto :goto_ae

    .line 33
    .end local v2    # "callbackClass":Ljava/lang/Class;
    .end local v3    # "binder":Landroid/os/HwBinder;
    .end local v4    # "param":[Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_51
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_af

    .line 30
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6a
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_ae

    .line 28
    :catch_83
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_ae

    .line 26
    :catch_99
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_ae
    :goto_ae
    nop

    .line 37
    :goto_af
    return-void
.end method
