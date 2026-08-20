.class final Lorg/apache/commons/lang3/time/FastDateParser$5;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3

    const/16 p0, 0xc

    if-ne p2, p0, :cond_5

    const/4 p2, 0x0

    :cond_5
    return p2
.end method
