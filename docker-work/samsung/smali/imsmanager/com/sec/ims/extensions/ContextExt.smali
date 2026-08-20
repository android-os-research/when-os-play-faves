.class public Lcom/sec/ims/extensions/ContextExt;
.super Ljava/lang/Object;
.source "ContextExt.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final HQM_SERVICE:Ljava/lang/String;

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "OWNER"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    .line 29
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT_OR_SELF"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 32
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT:Landroid/os/UserHandle;

    .line 35
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "ALL"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    .line 37
    const-class v0, Landroid/content/Context;

    const-string v1, "STATUS_BAR_SERVICE"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->STATUS_BAR_SERVICE:Ljava/lang/String;

    .line 40
    const-string v0, "HQM_SERVICE"

    const-string v1, "HqmManagerService"

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ContextExt;->getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/ContextExt;->HQM_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 74
    :try_start_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 75
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_10

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 80
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_10
    goto :goto_15

    .line 78
    :catch_11
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_15
    return-object p1
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerReceiverAsUser"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/content/IntentFilter;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Landroid/os/Handler;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    aput-object p5, v1, v9

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_38} :catch_39

    return-object v1

    .line 55
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sendBroadcastAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_21

    .line 69
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_25

    .line 67
    :catch_21
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_25
    return-void
.end method
