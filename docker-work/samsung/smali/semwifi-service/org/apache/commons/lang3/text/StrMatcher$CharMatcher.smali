.class final Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    .line 322
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 323
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 5

    .line 337
    iget-char p0, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    aget-char p1, p1, p2

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
