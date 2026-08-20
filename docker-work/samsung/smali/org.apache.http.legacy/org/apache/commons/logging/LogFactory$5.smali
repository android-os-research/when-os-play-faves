.class Lorg/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 1365
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 1368
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1369
    .local v0, "stream":Ljava/io/InputStream;
    if-eqz v0, :cond_14

    .line 1370
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1371
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1372
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 1373
    return-object v1

    .line 1379
    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v1    # "props":Ljava/util/Properties;
    :cond_14
    goto :goto_34

    .line 1375
    :catch_15
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->-$$Nest$smlogDiagnostic(Ljava/lang/String;)V

    .line 1381
    .end local v0    # "e":Ljava/io/IOException;
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return-object v0
.end method
