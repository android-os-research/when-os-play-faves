.class public Lnet/jafama/DoubleWrapper;
.super Ljava/lang/Object;
.source "DoubleWrapper.java"


# instance fields
.field public value:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 22
    iget-wide v0, p0, Lnet/jafama/DoubleWrapper;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
