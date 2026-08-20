.class Lc/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/k;


# direct methods
.method constructor <init>(Lc/k;)V
    .registers 2

    iput-object p1, p0, Lc/j;->a:Lc/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b4

    iget-object p2, p0, Lc/j;->a:Lc/k;

    invoke-static {p2}, Lc/k;->a(Lc/k;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Apk Install : "

    const-string v2, "."

    const/4 v3, 0x1

    if-eqz v0, :cond_60

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sput-boolean v3, Lc/k;->z:Z

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lc/k;->W:Ljava/lang/String;

    const-string p2, "DEV_TOOL"

    sput-object p2, Lc/k;->N:Ljava/lang/String;

    iget-object p2, p0, Lc/j;->a:Lc/k;

    invoke-static {p2}, Lc/k;->b(Lc/k;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iget-object p2, p0, Lc/j;->a:Lc/k;

    invoke-static {p2}, Lc/k;->c(Lc/k;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    sput-boolean v3, Lc/k;->x:Z

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lc/k;->X:Ljava/lang/String;

    invoke-static {}, Lc/k;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_98

    const-string p2, "RETAIL_A"

    sput-object p2, Lc/k;->y:Ljava/lang/String;

    goto :goto_9c

    :cond_98
    const-string p2, "RETAIL"

    sput-object p2, Lc/k;->N:Ljava/lang/String;

    :goto_9c
    iget-object p0, p0, Lc/j;->a:Lc/k;

    invoke-static {p0}, Lc/k;->b(Lc/k;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    return-void
.end method
