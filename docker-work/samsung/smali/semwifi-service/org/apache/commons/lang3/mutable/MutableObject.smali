.class public Lorg/apache/commons/lang3/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lorg/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1d

    .line 100
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableObject;

    .line 101
    iget-object p0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 113
    iget-object p0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_a
    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez p0, :cond_7

    const-string p0, "null"

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method
