.class public final Lorg/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpProcessor;
.implements Lorg/apache/http/protocol/HttpRequestInterceptorList;
.implements Lorg/apache/http/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected requestInterceptors:Ljava/util/List;

.field protected responseInterceptors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .registers 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 154
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .registers 3
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 160
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .registers 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 207
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .registers 3
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .line 211
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    .line 212
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .registers 3
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    .line 70
    if-nez p1, :cond_3

    .line 71
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_e

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 76
    :cond_e
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .registers 5
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .line 82
    if-ltz p2, :cond_23

    .line 85
    if-nez p1, :cond_5

    .line 86
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 90
    if-gtz p2, :cond_13

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    goto :goto_1d

    .line 91
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    return-void

    .line 83
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .registers 3
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    .line 190
    if-nez p1, :cond_3

    .line 191
    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_e

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 196
    :cond_e
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .registers 5
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .line 101
    if-ltz p2, :cond_23

    .line 104
    if-nez p1, :cond_5

    .line 105
    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 109
    if-gtz p2, :cond_13

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    goto :goto_1d

    .line 110
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    return-void

    .line 102
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearInterceptors()V
    .registers 1

    .line 282
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 283
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 284
    return-void
.end method

.method public clearRequestInterceptors()V
    .registers 2

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 184
    return-void
.end method

.method public clearResponseInterceptors()V
    .registers 2

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 237
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 337
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 338
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 339
    return-object v0
.end method

.method public copy()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 2

    .line 331
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 332
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 333
    return-object v0
.end method

.method protected copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V
    .registers 4
    .param p1, "target"    # Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 315
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 319
    :cond_d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 323
    :cond_1a
    return-void
.end method

.method public getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .registers 3
    .param p1, "index"    # I

    .line 173
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_16

    .line 177
    :cond_d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    return-object v0

    .line 175
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestInterceptorCount()I
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    :goto_a
    return v0
.end method

.method public getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .registers 3
    .param p1, "index"    # I

    .line 226
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_16

    .line 230
    :cond_d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    return-object v0

    .line 228
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInterceptorCount()I
    .registers 2

    .line 218
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_6

    .line 219
    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    :goto_a
    return v0
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 293
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 294
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequestInterceptor;

    .line 295
    .local v1, "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 292
    .end local v1    # "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 298
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 307
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    .line 308
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    .line 309
    .local v1, "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 306
    .end local v1    # "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 312
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .registers 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 120
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-nez v0, :cond_5

    .line 121
    return-void

    .line 123
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 129
    .end local v1    # "request":Ljava/lang/Object;
    :cond_20
    goto :goto_9

    .line 130
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_21
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .registers 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 134
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-nez v0, :cond_5

    .line 135
    return-void

    .line 137
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 143
    .end local v1    # "request":Ljava/lang/Object;
    :cond_20
    goto :goto_9

    .line 144
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_21
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .registers 5
    .param p1, "list"    # Ljava/util/List;

    .line 258
    if-eqz p1, :cond_33

    .line 261
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 262
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    :cond_9
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 265
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/http/HttpRequestInterceptor;

    if-eqz v2, :cond_25

    .line 270
    move-object v2, v1

    check-cast v2, Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 272
    :cond_25
    instance-of v2, v1, Lorg/apache/http/HttpResponseInterceptor;

    if-eqz v2, :cond_2f

    .line 273
    move-object v2, v1

    check-cast v2, Lorg/apache/http/HttpResponseInterceptor;

    invoke-virtual {p0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 267
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 276
    .end local v0    # "i":I
    :cond_32
    return-void

    .line 259
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
