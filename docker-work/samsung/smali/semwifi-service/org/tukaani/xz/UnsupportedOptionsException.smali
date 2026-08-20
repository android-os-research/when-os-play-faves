.class public Lorg/tukaani/xz/UnsupportedOptionsException;
.super Lorg/tukaani/xz/XZIOException;
.source "UnsupportedOptionsException.java"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lorg/tukaani/xz/XZIOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
