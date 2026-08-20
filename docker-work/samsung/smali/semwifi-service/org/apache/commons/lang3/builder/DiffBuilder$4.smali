.class Lorg/apache/commons/lang3/builder/DiffBuilder$4;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff<",
        "[",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[B

.field final synthetic val$rhs:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[B[B)V
    .registers 5

    .line 292
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$lhs:[B

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$rhs:[B

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .registers 1

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->getLeft()[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()[Ljava/lang/Byte;
    .registers 1

    .line 297
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$lhs:[B

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([B)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .registers 1

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->getRight()[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getRight()[Ljava/lang/Byte;
    .registers 1

    .line 302
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$rhs:[B

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([B)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
