.class Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_sizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getSize()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

.field final synthetic val$tmpSize:[I


# direct methods
.method constructor <init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[I)V
    .registers 3
    .param p1, "this$0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 210
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    iput-object p2, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;->val$tmpSize:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p2, "img_size":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_39

    .line 217
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;->val$tmpSize:[I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 218
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;->val$tmpSize:[I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    goto :goto_44

    .line 220
    :cond_39
    const-string v3, "get size error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;->val$tmpSize:[I

    aput v2, v1, v2

    .line 222
    aput v2, v1, v0

    .line 224
    :goto_44
    return-void
.end method
