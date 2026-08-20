.class Lh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh/g;->a:I

    iput-object p2, p0, Lh/g;->b:Ljava/lang/String;

    iput p3, p0, Lh/g;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .registers 1

    iget p0, p0, Lh/g;->c:I

    return p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lh/g;->a:I

    return p0
.end method
