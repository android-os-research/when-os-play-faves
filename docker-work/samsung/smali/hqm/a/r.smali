.class public final synthetic La/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$readHqmFileCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/r;->a:Ljava/lang/String;

    iput-object p2, p0, La/r;->b:[Z

    iput-object p3, p0, La/r;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, La/r;->a:Ljava/lang/String;

    iget-object v1, p0, La/r;->b:[Z

    iget-object p0, p0, La/r;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, La/s;->a(Ljava/lang/String;[ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
