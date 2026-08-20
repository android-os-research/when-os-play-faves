.class public Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/f;->a:I

    iput p2, p0, Lc/f;->b:I

    iput p3, p0, Lc/f;->c:I

    iput p4, p0, Lc/f;->d:I

    iput p5, p0, Lc/f;->e:I

    iput p6, p0, Lc/f;->f:I

    iput p7, p0, Lc/f;->g:I

    iput p8, p0, Lc/f;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget p0, p0, Lc/f;->e:I

    return p0
.end method

.method public b()I
    .registers 1

    iget p0, p0, Lc/f;->f:I

    return p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lc/f;->f:I

    if-lez p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public d()I
    .registers 1

    iget p0, p0, Lc/f;->b:I

    return p0
.end method

.method public e()I
    .registers 1

    iget p0, p0, Lc/f;->g:I

    return p0
.end method

.method public f()I
    .registers 1

    iget p0, p0, Lc/f;->a:I

    return p0
.end method

.method public g()I
    .registers 1

    iget p0, p0, Lc/f;->h:I

    return p0
.end method

.method public h()I
    .registers 1

    iget p0, p0, Lc/f;->c:I

    return p0
.end method

.method public i()I
    .registers 1

    iget p0, p0, Lc/f;->d:I

    return p0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lc/f;->e:I

    return-void
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lc/f;->f:I

    return-void
.end method

.method public l(I)V
    .registers 2

    iput p1, p0, Lc/f;->b:I

    return-void
.end method

.method public m(I)V
    .registers 2

    iput p1, p0, Lc/f;->g:I

    return-void
.end method

.method public n(I)V
    .registers 2

    iput p1, p0, Lc/f;->a:I

    return-void
.end method

.method public o(I)V
    .registers 2

    iput p1, p0, Lc/f;->h:I

    return-void
.end method

.method public p(I)V
    .registers 2

    iput p1, p0, Lc/f;->c:I

    return-void
.end method

.method public q(I)V
    .registers 2

    iput p1, p0, Lc/f;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerInfo [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battLev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", discharge_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lc/f;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
