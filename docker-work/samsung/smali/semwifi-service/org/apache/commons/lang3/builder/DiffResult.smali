.class public Lorg/apache/commons/lang3/builder/DiffResult;
.super Ljava/lang/Object;
.source "DiffResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/lang3/builder/Diff<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DIFFERS_STRING:Ljava/lang/String; = "differs from"

.field public static final OBJECTS_SAME_STRING:Ljava/lang/String; = ""


# instance fields
.field private final diffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final rhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Left hand object cannot be null"

    .line 76
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Right hand object cannot be null"

    .line 77
    invoke-static {p2, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "List of differences cannot be null"

    .line 78
    invoke-static {p3, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    if-nez p4, :cond_26

    .line 85
    sget-object p1, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    goto :goto_28

    .line 87
    :cond_26
    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    :goto_28
    return-void
.end method


# virtual methods
.method public getDiffs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    return-object p0
.end method

.method public getNumberOfDiffs()I
    .registers 1

    .line 131
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    return-object p0
.end method

.method public getToStringStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .registers 1

    .line 142
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 218
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/DiffResult;->toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 6

    .line 193
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 197
    :cond_b
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 198
    new-instance v1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 200
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/builder/Diff;

    .line 201
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 202
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    goto :goto_1f

    :cond_42
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 205
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "differs from"

    aput-object v0, p0, p1

    const/4 p1, 0x2

    .line 206
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    const-string p1, "%s %s %s"

    .line 205
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
