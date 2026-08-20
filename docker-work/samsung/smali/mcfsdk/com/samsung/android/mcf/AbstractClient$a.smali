.class public Lcom/samsung/android/mcf/AbstractClient$a;
.super Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/AbstractClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/AbstractClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/AbstractClient;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient$a;->a:Lcom/samsung/android/mcf/AbstractClient;

    invoke-direct {p0}, Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchMcfServiceStateChanged(II)Z
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    const/4 p1, 0x1

    if-ne p2, p1, :cond_18

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient$a;->a:Lcom/samsung/android/mcf/AbstractClient;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient$a;->a:Lcom/samsung/android/mcf/AbstractClient;

    invoke-static {p2}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/AbstractClient;)Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/mcf/AbstractClient$StatusListener;->onShutdown()V

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method
