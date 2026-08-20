.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/HashMap;

.field private final outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .registers 5
    .param p1, "inTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;
    .param p2, "outTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 56
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 68
    iput-object p2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    .line 69
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "metricName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-eqz v1, :cond_9

    .line 108
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    :cond_9
    if-nez v0, :cond_5c

    .line 111
    const-string v1, "http.request-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 112
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_5c

    .line 113
    :cond_1c
    const-string v1, "http.response-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 114
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_5c

    .line 115
    :cond_2d
    const-string v1, "http.received-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 116
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v1, :cond_44

    .line 117
    new-instance v2, Ljava/lang/Long;

    invoke-interface {v1}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    .line 119
    :cond_44
    return-object v2

    .line 121
    :cond_45
    const-string v1, "http.sent-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 122
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v1, :cond_5b

    .line 123
    new-instance v2, Ljava/lang/Long;

    invoke-interface {v1}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    .line 125
    :cond_5b
    return-object v2

    .line 129
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public getReceivedBytesCount()J
    .registers 3

    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_9

    .line 75
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    .line 77
    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRequestCount()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .registers 3

    .line 82
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_9

    .line 83
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    .line 85
    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public incrementRequestCount()V
    .registers 5

    .line 94
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 95
    return-void
.end method

.method public incrementResponseCount()V
    .registers 5

    .line 102
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 103
    return-void
.end method

.method public reset()V
    .registers 3

    .line 140
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_7

    .line 141
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 143
    :cond_7
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_e

    .line 144
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    .line 146
    :cond_e
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 147
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 136
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method
