.class public Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/e;->b:Ljava/lang/String;

    iput p3, p0, Lb/e;->d:I

    iput p4, p0, Lb/e;->e:I

    iput-object p5, p0, Lb/e;->f:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lb/e;->g:I

    iput p1, p0, Lb/e;->h:I

    const-string p1, "None"

    iput-object p1, p0, Lb/e;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget p0, p0, Lb/e;->c:I

    return p0
.end method

.method public b()I
    .registers 1

    iget p0, p0, Lb/e;->e:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .registers 1

    iget p0, p0, Lb/e;->d:I

    return p0
.end method

.method public e()I
    .registers 1

    iget p0, p0, Lb/e;->h:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()I
    .registers 1

    iget p0, p0, Lb/e;->g:I

    return p0
.end method

.method public h()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lb/e;->c:I

    return-void
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lb/e;->e:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/e;->f:Ljava/lang/String;

    return-void
.end method

.method public m(I)V
    .registers 2

    iput p1, p0, Lb/e;->d:I

    return-void
.end method

.method public n(I)V
    .registers 2

    iput p1, p0, Lb/e;->h:I

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/e;->i:Ljava/lang/String;

    return-void
.end method

.method public p(I)V
    .registers 2

    iput p1, p0, Lb/e;->g:I

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/e;->a:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/e;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PredictionInfo [name ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activationTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activationBattLev ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activationReason ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deActivationTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", daActivationBattLev ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deActivationBattLev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/e;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
