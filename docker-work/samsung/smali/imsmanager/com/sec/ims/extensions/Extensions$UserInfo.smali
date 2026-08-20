.class public Lcom/sec/ims/extensions/Extensions$UserInfo;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId(Ljava/lang/Object;)I
    .registers 2
    .param p0, "userInfo"    # Ljava/lang/Object;

    .line 205
    const-string v0, "id"

    invoke-static {v0, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isBMode(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "userInfo"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.content.pm.UserInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 195
    .local v1, "classUi":Ljava/lang/Class;
    const-string v2, "isBMode"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c

    return v0

    .line 197
    .end local v1    # "classUi":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1c
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 201
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    return v0
.end method
