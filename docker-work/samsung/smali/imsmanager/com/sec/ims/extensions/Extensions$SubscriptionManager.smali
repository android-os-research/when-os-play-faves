.class public Lcom/sec/ims/extensions/Extensions$SubscriptionManager;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDataSubscriptionId()I
    .registers 1

    .line 52
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I
    .registers 5
    .param p0, "sm"    # Landroid/telephony/SubscriptionManager;

    .line 26
    :try_start_0
    const-class v0, Landroid/telephony/SubscriptionManager;

    const-string v1, "getDefaultDataPhoneId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_17} :catch_18

    return v1

    .line 29
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_18
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, -0x1

    return v0
.end method

.method public static getSlotId(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 37
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getSubId(I)[I
    .registers 8
    .param p0, "slotId"    # I

    .line 42
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "getSubId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v2

    .line 45
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_20
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 48
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method
