.class public abstract Lorg/apache/http/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lorg/apache/http/params/HttpParams;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 103
    return p2

    .line 105
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 90
    return-wide p2

    .line 92
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 77
    return p2

    .line 79
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 64
    return-wide p2

    .line 66
    :cond_7
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 109
    if-eqz p2, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 110
    return-object p0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)Lorg/apache/http/params/HttpParams;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 96
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 97
    return-object p0
.end method

.method public setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 83
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 84
    return-object p0
.end method

.method public setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 70
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 71
    return-object p0
.end method
