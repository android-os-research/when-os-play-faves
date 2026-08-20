.class public La/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/h;->a:Ljava/lang/String;

    iput-object p2, p0, La/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, La/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object p0, p0, La/h;->b:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
