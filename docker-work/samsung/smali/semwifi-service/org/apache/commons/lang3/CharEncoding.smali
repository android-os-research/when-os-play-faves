.class public Lorg/apache/commons/lang3/CharEncoding;
.super Ljava/lang/Object;
.source "CharEncoding.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 104
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    return v0
.end method
