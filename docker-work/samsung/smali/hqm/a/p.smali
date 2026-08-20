.class public La/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/p;->a:Ljava/lang/String;

    iput-object p2, p0, La/p;->b:Ljava/lang/String;

    iput-object p3, p0, La/p;->c:Ljava/lang/String;

    iput p4, p0, La/p;->d:I

    iput-object p5, p0, La/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/p;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/p;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .registers 1

    iget p0, p0, La/p;->d:I

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    const/4 p0, 0x1

    :goto_7
    return p0
.end method
