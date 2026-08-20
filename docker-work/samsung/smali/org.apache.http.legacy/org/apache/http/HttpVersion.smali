.class public final Lorg/apache/http/HttpVersion;
.super Lorg/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/http/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lorg/apache/http/HttpVersion;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    .line 60
    new-instance v0, Lorg/apache/http/HttpVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 63
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 75
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 76
    return-void
.end method


# virtual methods
.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 89
    iget v0, p0, Lorg/apache/http/HttpVersion;->major:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lorg/apache/http/HttpVersion;->minor:I

    if-ne p2, v0, :cond_9

    .line 90
    return-object p0

    .line 93
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 94
    if-nez p2, :cond_11

    .line 95
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    return-object v0

    .line 97
    :cond_11
    if-ne p2, v0, :cond_16

    .line 98
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-object v0

    .line 101
    :cond_16
    if-nez p1, :cond_1f

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1f

    .line 102
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    return-object v0

    .line 106
    :cond_1f
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    return-object v0
.end method
