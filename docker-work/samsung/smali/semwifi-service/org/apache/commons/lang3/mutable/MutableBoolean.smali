.class public Lorg/apache/commons/lang3/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->compareTo(Lorg/apache/commons/lang3/mutable/MutableBoolean;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableBoolean;)I
    .registers 2

    .line 200
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    iget-boolean p1, p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 174
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 175
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public getValue()Ljava/lang/Boolean;
    .registers 1

    .line 80
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 187
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFalse()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTrue()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return p0
.end method

.method public setFalse()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public setTrue()V
    .registers 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .registers 2

    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Z)V
    .registers 2

    .line 89
    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .registers 1

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 211
    iget-boolean p0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
