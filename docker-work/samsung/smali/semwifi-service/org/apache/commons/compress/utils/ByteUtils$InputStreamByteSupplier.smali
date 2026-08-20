.class public Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;
.super Ljava/lang/Object;
.source "ByteUtils.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/utils/ByteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamByteSupplier"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getAsByte()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object p0, p0, Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method
