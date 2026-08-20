.class public Lnet/jafama/IntWrapper;
.super Ljava/lang/Object;
.source "IntWrapper.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 22
    iget p0, p0, Lnet/jafama/IntWrapper;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
