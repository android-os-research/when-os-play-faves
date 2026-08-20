.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public expiresAt:J

.field public hostOnly:Z

.field public httpOnly:Z

.field public name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public path:Ljava/lang/String;

.field public persistent:Z

.field public secure:Z

.field public value:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 463
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const-string v0, "/"

    .line 465
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/Cookie;
    .registers 2

    .line 537
    new-instance v0, Lokhttp3/Cookie;

    invoke-direct {v0, p0}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .registers 4

    if-eqz p1, :cond_25

    .line 511
    invoke-static {p1}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 515
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 516
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    return-object p0

    .line 513
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected domain: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    const-wide/high16 p1, -0x8000000000000000L

    :cond_8
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    move-wide p1, v0

    .line 488
    :cond_12
    iput-wide p1, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3

    const/4 v0, 0x1

    .line 506
    invoke-virtual {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p0

    return-object p0
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3

    if-eqz p1, :cond_17

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 474
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    return-object p0

    .line 473
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is not trimmed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3

    const-string v0, "/"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 522
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-object p0

    .line 521
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "path must start with \'/\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public secure()Lokhttp3/Cookie$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3

    if-eqz p1, :cond_18

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 481
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    return-object p0

    .line 480
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "value is not trimmed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
