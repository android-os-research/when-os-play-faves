.class public Lcom/android/server/sepunion/friends/common/FwDependency;
.super Ljava/lang/Object;
.source "FwDependency.java"


# static fields
.field public static final PRODUCT_DEV:Z

.field public static final SHELL_UID:Ljava/lang/String; = "SHELL_UID"

.field public static final SYSTEM_UID:Ljava/lang/String; = "SYSTEM_UID"

.field public static final TAG:Ljava/lang/String; = "Fw"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->internalIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    :try_start_2
    const-class v2, Landroid/content/Context;

    const-string v3, "bindServiceAsUser"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v0

    const-class v6, Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/os/UserHandle;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 52
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3f

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v7

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    aput-object p4, v2, v9

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3a} :catch_3b

    return p0

    :catch_3b
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_3f
    if-nez v1, :cond_4a

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Fw"

    const-string p2, "bindServiceAsUser fail to invoke method"

    .line 62
    invoke-static {p1, p2, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4a
    return v0
.end method

.method public static getProcessField(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    .line 140
    :try_start_1
    const-class v1, Landroid/os/Process;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    move v0, p0

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 145
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return v0
.end method

.method public static getProcessShellUid()I
    .registers 1

    const-string v0, "SHELL_UID"

    .line 134
    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProcessSystemUid()I
    .registers 1

    const-string v0, "SYSTEM_UID"

    .line 130
    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 4

    const/4 v0, 0x0

    .line 32
    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    move-object v0, p0

    goto :goto_15

    :catchall_11
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    if-nez v0, :cond_21

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Fw"

    const-string v2, "getUserHandle return null"

    .line 41
    invoke-static {v1, v2, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_21
    return-object v0
.end method

.method public static internalIsProductDev()Z
    .registers 4

    .line 152
    const-class v0, Landroid/os/Debug;

    :try_start_2
    const-string/jumbo v1, "semIsProductDev"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 157
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_20
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 165
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProductDev()Z
    .registers 2

    .line 170
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    :try_start_2
    const-class v0, Landroid/content/Context;

    const-string/jumbo v3, "registerReceiverAsUser"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/UserHandle;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Landroid/content/IntentFilter;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Landroid/os/Handler;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 112
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_26} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_26} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_26} :catch_40

    if-eqz v3, :cond_45

    const/4 v0, 0x6

    :try_start_29
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v7

    aput-object p2, v0, v8

    aput-object p3, v0, v9

    aput-object p4, v0, v10

    aput-object p5, v0, v4

    .line 116
    invoke-virtual {v3, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_3d} :catch_3e

    return-object v0

    :catch_3e
    move-exception v0

    goto :goto_42

    :catch_40
    move-exception v0

    move-object v3, v1

    .line 119
    :goto_42
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_45
    if-nez v3, :cond_51

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Fw"

    const-string/jumbo v3, "registerReceiverAsUser fail to invoke method"

    .line 123
    invoke-static {v2, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_51
    return-object v1
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    .line 71
    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "sendBroadcastAsUser"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 72
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_28

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    .line 74
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    :cond_28
    return v6

    :catchall_29
    move-exception p0

    .line 80
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Fw"

    const-string/jumbo p2, "startActivityAsUser fail to invoke method"

    .line 83
    invoke-static {p1, p2, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 10

    const/4 v0, 0x0

    .line 90
    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "startActivityAsUser"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_21

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 92
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    :cond_21
    return v6

    :catchall_22
    move-exception p0

    .line 98
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Fw"

    const-string/jumbo p2, "startActivityAsUser fail to invoke method"

    .line 101
    invoke-static {p1, p2, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
