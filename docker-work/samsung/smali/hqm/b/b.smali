.class Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/b;->a:I

    iput-object p2, p0, Lb/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lb/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lb/b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lb/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget p0, p0, Lb/b;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    const-string p0, "FC"

    return-object p0

    :cond_8
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-string p0, "ANR"

    return-object p0

    :cond_e
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public e()I
    .registers 1

    iget p0, p0, Lb/b;->a:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/b;->d:Ljava/lang/String;

    return-object p0
.end method
