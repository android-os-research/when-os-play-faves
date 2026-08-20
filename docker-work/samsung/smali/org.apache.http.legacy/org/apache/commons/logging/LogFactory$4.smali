.class Lorg/apache/commons/logging/LogFactory$4;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    .line 1328
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    .line 1331
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_c

    .line 1332
    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_c
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    .line 1343
    :catch_13
    move-exception v1

    .line 1347
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    return-object v0

    .line 1336
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_15
    move-exception v1

    .line 1337
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to find configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1340
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1338
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->-$$Nest$smlogDiagnostic(Ljava/lang/String;)V

    .line 1342
    :cond_42
    return-object v0
.end method
