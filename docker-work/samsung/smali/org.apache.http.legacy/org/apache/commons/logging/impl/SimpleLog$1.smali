.class Lorg/apache/commons/logging/impl/SimpleLog$1;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 701
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 703
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->-$$Nest$smgetContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 705
    .local v0, "threadCL":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_d

    .line 706
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 708
    :cond_d
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method
