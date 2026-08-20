.class public Lcom/sec/ims/extensions/WiFiManagerExt;
.super Ljava/lang/Object;
.source "WiFiManagerExt.java"


# static fields
.field public static final SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

.field public static final SEM_WIFI_SERVICE:Ljava/lang/String; = "sem_wifi"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-class v0, Lcom/sec/ims/extensions/WiFiManagerExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION"

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->getIntFromField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callSECApi(Landroid/net/wifi/WifiManager;Landroid/os/Message;)I
    .registers 8
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v1, "callSECApi"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Message;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    return v1

    .line 50
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, -0x1

    return v0
.end method

.method static getIntFromField(Ljava/lang/String;I)I
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 37
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 38
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 39
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_c
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    return p1
.end method

.method public static setImsCallEstablished(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEstablisehd"    # Z

    .line 58
    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 59
    .local v0, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    if-eqz v0, :cond_68

    .line 60
    sget-object v1, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsCallEstablished: semWifiManager.setImsCallEstablished : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_22
    const-class v1, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "setImsCallEstablished"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_3d} :catch_3f

    .line 66
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_68

    .line 64
    :catch_3f
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_68
    :goto_68
    return-void
.end method

.method public static setMaxDtimInSuspendMode(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 72
    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 73
    .local v0, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    if-eqz v0, :cond_50

    .line 75
    :try_start_a
    const-class v1, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "setMaxDtimInSuspendMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 76
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_25} :catch_27

    .line 79
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_50

    .line 77
    :catch_27
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/sec/ims/extensions/WiFiManagerExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_50
    :goto_50
    return-void
.end method
