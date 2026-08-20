.class public Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "a"

.field private static g:Ld/a; = null

.field private static h:Ld/b; = null

.field public static i:Z = false

.field private static final j:Ljava/lang/String; = "ro.product.vendor.device"


# instance fields
.field private a:I

.field private b:I

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ld/a;->a:I

    const/4 v0, 0x3

    iput v0, p0, Ld/a;->b:I

    const-string v0, "ro.product.vendor.device"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hqm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/a;->d:Ljava/lang/String;

    const-string v0, "jdm"

    iput-object v0, p0, Ld/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ld/a;
    .registers 1

    sget-object v0, Ld/a;->g:Ld/a;

    if-nez v0, :cond_b

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    sput-object v0, Ld/a;->g:Ld/a;

    :cond_b
    sget-object v0, Ld/a;->g:Ld/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Ld/a;->i:Z

    iget-object v0, p0, Ld/a;->d:Ljava/lang/String;

    sput-object v0, Lc/k;->T:Ljava/lang/String;

    iget-object v0, p0, Ld/a;->e:Ljava/lang/String;

    sput-object v0, Lc/k;->U:Ljava/lang/String;

    const-string v1, "jdm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget p0, p0, Ld/a;->b:I

    goto :goto_18

    :cond_16
    iget p0, p0, Ld/a;->a:I

    :goto_18
    sput p0, Lc/k;->V:I

    sget-object p0, Ld/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xml file name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/k;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manufacturingType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/k;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/k;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ld/a;->h:Ld/b;

    if-nez p0, :cond_68

    invoke-static {}, Ld/b;->b()Ld/b;

    move-result-object p0

    sput-object p0, Ld/a;->h:Ld/b;

    :cond_68
    sget-object p0, Ld/a;->h:Ld/b;

    if-eqz p0, :cond_71

    sget v0, Lc/k;->V:I

    invoke-virtual {p0, v0}, Ld/b;->c(I)V

    :cond_71
    return-void
.end method
