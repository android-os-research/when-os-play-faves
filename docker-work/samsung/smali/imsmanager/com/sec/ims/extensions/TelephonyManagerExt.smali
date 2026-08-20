.class public Lcom/sec/ims/extensions/TelephonyManagerExt;
.super Ljava/lang/Object;
.source "TelephonyManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    }
.end annotation


# static fields
.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_5_G:I = 0x4

.field public static final NETWORK_CLASS_UNKNOWN:I = -0x1

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_TDLTE:I = 0x1f

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 83
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 84
    const-string v1, "ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt;->ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUATI(Landroid/content/Context;)[B
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 177
    const/4 v0, 0x0

    .line 180
    .local v0, "currentUATI":[B
    :try_start_1
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getITelephonyExt(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, "ITelephonyExtInstance":Ljava/lang/Object;
    if-eqz v1, :cond_1d

    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentUATI"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 183
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1c} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1c} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1c} :catch_1e

    move-object v0, v3

    .line 193
    .end local v1    # "ITelephonyExtInstance":Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    :goto_1d
    goto :goto_32

    .line 191
    :catch_1e
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_32

    .line 189
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_23
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1d

    .line 187
    :catch_28
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1d

    .line 185
    :catch_2d
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1d

    .line 195
    :goto_32
    return-object v0
.end method

.method private static getITelephonyExt(Landroid/content/Context;)Ljava/lang/Object;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getITelephony"

    .line 159
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 160
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    const-string v4, "phone"

    .line 162
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_23} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v2

    .line 171
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_24
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2b
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_32
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 163
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_40
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .param p0, "type"    # I

    .line 103
    packed-switch p0, :pswitch_data_e

    .line 129
    const/4 v0, -0x1

    return v0

    .line 127
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 125
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 121
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 110
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static getNetworkEnumType(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .registers 2
    .param p0, "value"    # I

    .line 88
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->-$$Nest$smvalueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 8
    .param p0, "type"    # I

    .line 93
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getNetworkTypeName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v2

    .line 95
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_20
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method public static getPsismsc(Landroid/telephony/TelephonyManager;I)[B
    .registers 8
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "phoneId"    # I

    .line 135
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getPsismsc"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 137
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 8
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "subId"    # I

    .line 146
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 148
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isRoaming()Z
    .registers 2

    .line 199
    const-string v0, "gsm.operator.isroaming"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "isPsRoaming":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
