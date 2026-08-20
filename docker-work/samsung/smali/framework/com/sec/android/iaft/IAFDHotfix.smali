.class public Lcom/sec/android/iaft/IAFDHotfix;
.super Ljava/lang/Object;
.source "IAFDHotfix.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFT_IAFDHotfix"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hotfix(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Z
    const-string v1, "IAFT_IAFDHotfix"

    if-nez p0, :cond_b

    .line 34
    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v0

    .line 38
    :cond_b
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iafdrepair_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v3, "dexLocation":Ljava/io/File;
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 41
    .local v4, "loader":Ldalvik/system/PathClassLoader;
    const-string v5, "hotfix start"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v5, "hotfix end"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_49} :catch_4b

    .line 51
    nop

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "dexLocation":Ljava/io/File;
    .end local v4    # "loader":Ldalvik/system/PathClassLoader;
    goto :goto_51

    .line 49
    :catch_4b
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hotfix fail"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    return v0
.end method
