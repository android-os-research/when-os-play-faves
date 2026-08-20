.class Lc/e;
.super Landroid/os/UEventObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/h;


# direct methods
.method constructor <init>(Lc/h;)V
    .registers 2

    iput-object p1, p0, Lc/e;->a:Lc/h;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 4

    iget-object p0, p0, Lc/e;->a:Lc/h;

    invoke-static {p0}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FEATURE"

    invoke-virtual {p1, p0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lc/h;->b()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-static {}, Lc/h;->b()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/a;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lc/a;->m()Z

    :cond_39
    return-void
.end method
