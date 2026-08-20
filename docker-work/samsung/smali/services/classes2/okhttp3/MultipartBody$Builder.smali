.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final boundary:Lokio/ByteString;

.field public final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 288
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sget-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 292
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .registers 3

    .line 322
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 327
    invoke-static {p1, p2, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 3
    .param p1    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 317
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 333
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 332
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "part == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPart(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 2

    .line 312
    invoke-static {p1}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method public build()Lokhttp3/MultipartBody;
    .registers 4

    .line 339
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 342
    new-instance v0, Lokhttp3/MultipartBody;

    iget-object v1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    iget-object v2, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lokhttp3/MultipartBody;-><init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 340
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Multipart body must have at least one part."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;
    .registers 4

    if-eqz p1, :cond_28

    .line 303
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 306
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    return-object p0

    .line 304
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
