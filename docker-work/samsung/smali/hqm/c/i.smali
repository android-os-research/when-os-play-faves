.class public Lc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Date;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lc/b;->D:I

    iput v0, p0, Lc/i;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lc/i;->e:Ljava/lang/String;

    iput-object v0, p0, Lc/i;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/i;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lc/i;->h:Ljava/lang/String;

    iput-object v0, p0, Lc/i;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lc/i;->c:Ljava/lang/String;

    iput-object p2, p0, Lc/i;->d:Ljava/lang/String;

    iput-object p3, p0, Lc/i;->e:Ljava/lang/String;

    iput-object p4, p0, Lc/i;->f:Ljava/lang/String;

    iput-object p5, p0, Lc/i;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lc/i;->h:Ljava/lang/String;

    iput-object p2, p0, Lc/i;->i:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lc/i;->b:I

    return-void
.end method

.method public d(J)V
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lc/i;->a:Ljava/util/Date;

    return-void
.end method

.method public e(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lc/i;->a:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Lc/i;->b:I

    sget v2, Lc/b;->D:I

    if-ne v1, v2, :cond_15

    const-string v1, "N "

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_15
    sget v2, Lc/b;->E:I

    if-ne v1, v2, :cond_1c

    const-string v1, "D "

    goto :goto_11

    :cond_1c
    sget v2, Lc/b;->F:I

    if-ne v1, v2, :cond_23

    const-string v1, "C "

    goto :goto_11

    :cond_23
    sget v2, Lc/b;->G:I

    if-ne v1, v2, :cond_2a

    const-string v1, "F "

    goto :goto_11

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lc/i;->a:Ljava/util/Date;

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/i;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    const-string v1, "---"

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->c:Ljava/lang/String;

    const-string v2, " "

    if-eqz v1, :cond_4f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    iget-object v1, p0, Lc/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    iget-object v1, p0, Lc/i;->e:Ljava/lang/String;

    if-eqz v1, :cond_67

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    iget-object v1, p0, Lc/i;->f:Ljava/lang/String;

    if-eqz v1, :cond_73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    iget-object v1, p0, Lc/i;->g:Ljava/lang/String;

    if-eqz v1, :cond_7f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    iget-object v1, p0, Lc/i;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " :"

    if-nez v1, :cond_93

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    iget-object v1, p0, Lc/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc/i;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
