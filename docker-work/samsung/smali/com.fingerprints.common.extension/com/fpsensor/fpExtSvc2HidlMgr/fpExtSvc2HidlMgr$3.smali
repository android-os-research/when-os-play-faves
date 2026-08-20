.class Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_img_qualityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getImgQuality()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

.field final synthetic val$tmpQuality:[I


# direct methods
.method constructor <init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[I)V
    .registers 3
    .param p1, "this$0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 163
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    iput-object p2, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->val$tmpQuality:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "img_quality":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
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

    .line 170
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_48

    .line 171
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->val$tmpQuality:[I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 172
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->val$tmpQuality:[I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 173
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->val$tmpQuality:[I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    goto :goto_55

    .line 175
    :cond_48
    const-string v4, "get quality error"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;->val$tmpQuality:[I

    aput v3, v1, v3

    .line 177
    aput v3, v1, v2

    .line 178
    aput v3, v1, v0

    .line 180
    :goto_55
    return-void
.end method
