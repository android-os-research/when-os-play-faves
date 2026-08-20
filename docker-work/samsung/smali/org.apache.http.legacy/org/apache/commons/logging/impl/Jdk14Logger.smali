.class public Lorg/apache/commons/logging/impl/Jdk14Logger;
.super Ljava/lang/Object;
.source "Jdk14Logger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final dummyLevel:Ljava/util/logging/Level;


# instance fields
.field protected transient logger:Ljava/util/logging/Logger;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lorg/apache/commons/logging/impl/Jdk14Logger;->dummyLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    .line 67
    return-void
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 15
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    .line 90
    .local v6, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v6, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 92
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    move-object v7, v0

    .line 93
    .local v7, "dummyException":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 95
    .local v8, "locations":[Ljava/lang/StackTraceElement;
    const-string v0, "unknown"

    .line 96
    .local v0, "cname":Ljava/lang/String;
    const-string v1, "unknown"

    .line 97
    .local v1, "method":Ljava/lang/String;
    if-eqz v8, :cond_2b

    array-length v2, v8

    const/4 v3, 0x2

    if-le v2, v3, :cond_2b

    .line 98
    aget-object v2, v8, v3

    .line 99
    .local v2, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    move-object v9, v0

    move-object v10, v1

    goto :goto_2d

    .line 102
    .end local v2    # "caller":Ljava/lang/StackTraceElement;
    :cond_2b
    move-object v9, v0

    move-object v10, v1

    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "method":Ljava/lang/String;
    .local v9, "cname":Ljava/lang/String;
    .local v10, "method":Ljava/lang/String;
    :goto_2d
    if-nez p3, :cond_33

    .line 103
    invoke-virtual {v6, p1, v9, v10, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 105
    :cond_33
    move-object v0, v6

    move-object v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v7    # "dummyException":Ljava/lang/Throwable;
    .end local v8    # "locations":[Ljava/lang/StackTraceElement;
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 118
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 130
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 141
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 153
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 164
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 176
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .registers 2

    .line 184
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    .line 187
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 198
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 210
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 3

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 3

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 3

    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 3

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 3

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 269
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 281
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 292
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 304
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    return-void
.end method
