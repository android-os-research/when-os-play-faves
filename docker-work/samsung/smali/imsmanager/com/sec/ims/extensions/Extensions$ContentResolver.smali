.class public Lcom/sec/ims/extensions/Extensions$ContentResolver;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentResolver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .line 101
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p3, v1, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_34} :catch_35

    .line 107
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_39

    .line 105
    :catch_35
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_39
    return-void
.end method
