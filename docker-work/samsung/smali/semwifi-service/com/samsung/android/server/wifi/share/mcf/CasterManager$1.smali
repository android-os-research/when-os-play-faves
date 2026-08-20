.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;
.super Lcom/samsung/android/mcf/CasterCallback;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/CasterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .registers 5

    .line 381
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/CasterCallback;->onMcfServiceStateChanged(II)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- onMcfServiceStateChanged, status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    if-ne v0, p1, :cond_3c

    const/4 p1, 0x1

    if-ne p1, p2, :cond_3c

    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/mcf/McfCaster;->isNetworkEnabled(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Z)V

    :cond_3c
    return-void
.end method
