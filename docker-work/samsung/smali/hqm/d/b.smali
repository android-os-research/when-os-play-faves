.class public Ld/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ld/b;

.field private static c:[[Ljava/lang/String;

.field private static d:Ljava/util/List;

.field private static e:Z

.field private static f:Ljava/util/List;

.field private static g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, Ld/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ld/b;->b:Ld/b;

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v4, "AP_ALL"

    const-string v5, "MODEM_ALL"

    const-string v6, "POWER_ALL"

    const-string v7, "BATTERY_ALL"

    const-string v8, "SLUGGISH_ALL"

    const-string v9, "OVERHEAT_ALL"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const-string v2, "ALL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    sput-object v0, Ld/b;->c:[[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/b;->d:Ljava/util/List;

    sput-boolean v1, Ld/b;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/b;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/b;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ld/b;
    .registers 1

    sget-object v0, Ld/b;->b:Ld/b;

    if-nez v0, :cond_b

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/b;->b:Ld/b;

    :cond_b
    sget-object v0, Ld/b;->b:Ld/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-boolean p0, Ld/b;->e:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld/b;->f:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld/b;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    return v0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public c(I)V
    .registers 6

    sget-object p0, Ld/b;->c:[[Ljava/lang/String;

    array-length p0, p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-le p1, p0, :cond_1e

    sget-object p0, Ld/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log level size is over : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    if-ltz p1, :cond_39

    sget-object v1, Ld/b;->c:[[Ljava/lang/String;

    aget-object v1, v1, p1

    array-length v1, v1

    :goto_26
    if-ge p0, v1, :cond_36

    sget-object v2, Ld/b;->d:Ljava/util/List;

    sget-object v3, Ld/b;->c:[[Ljava/lang/String;

    aget-object v3, v3, p1

    aget-object v3, v3, p0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_26

    :cond_36
    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    :cond_39
    sget-object p1, Ld/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ld/b;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ld/b;->d:Ljava/util/List;

    const-string v2, "ALL"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    sput-boolean v0, Ld/b;->e:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "permittedAll : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Ld/b;->e:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    :cond_74
    sget-object p1, Ld/b;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ld/b;->f:Ljava/util/List;

    aget-object v0, v0, p0

    goto :goto_9b

    :cond_99
    sget-object v1, Ld/b;->g:Ljava/util/List;

    :goto_9b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_9f
    sget-object p0, Ld/b;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "permittedComp : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ld/b;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "permittedFeature : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ld/b;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    return-void
.end method
