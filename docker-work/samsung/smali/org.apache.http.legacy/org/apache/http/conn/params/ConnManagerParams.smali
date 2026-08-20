.class public final Lorg/apache/http/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnManagerPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lorg/apache/http/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lorg/apache/http/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 125
    if-eqz p0, :cond_f

    .line 129
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/params/ConnPerRoute;

    .line 130
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    if-nez v0, :cond_e

    .line 131
    sget-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 133
    :cond_e
    return-object v0

    .line 126
    .end local v0    # "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 166
    if-eqz p0, :cond_b

    .line 170
    const/16 v0, 0x14

    const-string v1, "http.conn-manager.max-total"

    invoke-interface {p0, v1, v0}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 167
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeout(Lorg/apache/http/params/HttpParams;)J
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 68
    if-eqz p0, :cond_b

    .line 71
    const-wide/16 v0, 0x0

    const-string v2, "http.conn-manager.timeout"

    invoke-interface {p0, v2, v0, v1}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 69
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "connPerRoute"    # Lorg/apache/http/conn/params/ConnPerRoute;

    .line 108
    if-eqz p0, :cond_8

    .line 112
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 113
    return-void

    .line 109
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "maxTotalConnections"    # I

    .line 148
    if-eqz p0, :cond_8

    .line 152
    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 153
    return-void

    .line 149
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTimeout(Lorg/apache/http/params/HttpParams;J)V
    .registers 5
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "timeout"    # J

    .line 82
    if-eqz p0, :cond_8

    .line 85
    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 86
    return-void

    .line 83
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
