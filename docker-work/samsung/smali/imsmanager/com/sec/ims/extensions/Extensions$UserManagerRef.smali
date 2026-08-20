.class public Lcom/sec/ims/extensions/Extensions$UserManagerRef;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserManagerRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsers(Landroid/os/UserManager;)Ljava/util/List;
    .registers 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 212
    :try_start_0
    const-string v0, "android.os.UserManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    .local v0, "classUm":Ljava/lang/Class;
    const-string v1, "getUsers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 214
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v2

    .line 215
    .end local v0    # "classUm":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_18
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return-object v0
.end method
