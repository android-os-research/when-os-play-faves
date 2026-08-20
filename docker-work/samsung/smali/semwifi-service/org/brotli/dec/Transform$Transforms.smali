.class final Lorg/brotli/dec/Transform$Transforms;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/dec/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Transforms"
.end annotation


# instance fields
.field final numTransforms:I

.field final params:[S

.field final prefixSuffixHeads:[I

.field final prefixSuffixStorage:[B

.field final triplets:[I


# direct methods
.method constructor <init>(III)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/brotli/dec/Transform$Transforms;->numTransforms:I

    mul-int/lit8 v0, p1, 0x3

    .line 46
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/Transform$Transforms;->triplets:[I

    .line 47
    new-array p1, p1, [S

    iput-object p1, p0, Lorg/brotli/dec/Transform$Transforms;->params:[S

    .line 48
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixStorage:[B

    add-int/lit8 p3, p3, 0x1

    .line 49
    new-array p1, p3, [I

    iput-object p1, p0, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixHeads:[I

    return-void
.end method
