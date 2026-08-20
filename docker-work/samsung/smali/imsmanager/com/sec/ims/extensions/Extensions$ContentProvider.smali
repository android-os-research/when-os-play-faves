.class public Lcom/sec/ims/extensions/Extensions$ContentProvider;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 114
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/ContentProvider;

    const-string v2, "maybeAddUserId"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_26} :catch_27

    return-object v2

    .line 117
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_27
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 121
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method
