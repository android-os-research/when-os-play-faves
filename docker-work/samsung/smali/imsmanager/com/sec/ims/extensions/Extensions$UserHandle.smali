.class public Lcom/sec/ims/extensions/Extensions$UserHandle;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserHandle"
.end annotation


# static fields
.field public static final USER_OWNER:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static myUserId()I
    .registers 4

    .line 181
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "myUserId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 182
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19

    return v1

    .line 183
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 187
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, -0x1

    return v0
.end method
