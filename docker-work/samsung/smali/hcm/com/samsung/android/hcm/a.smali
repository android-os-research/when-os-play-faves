.class Lcom/samsung/android/hcm/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hcm/HcmManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hcm/HcmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hcm/HcmManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/hcm/a;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_ed

    const/16 v1, 0x259

    if-eq p0, v1, :cond_d0

    const/16 v1, 0x12d

    const/4 v2, 0x0

    if-eq p0, v1, :cond_b1

    const/16 v1, 0x12e

    if-eq p0, v1, :cond_8d

    const/16 v1, 0x1f5

    if-eq p0, v1, :cond_7b

    const/16 v1, 0x1f6

    if-eq p0, v1, :cond_5b

    const/16 v0, 0x321

    if-eq p0, v0, :cond_3d

    const/16 p1, 0x322

    if-eq p0, p1, :cond_24

    goto/16 :goto_104

    :cond_24
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE:MSG_TYPE_SMC_DB_TEST"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Lc/d;->K(I)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->E()V

    goto/16 :goto_c8

    :cond_3d
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MSG_TYPE:MSG_TYPE_SMC_TEST"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Lg/b;

    move-result-object p1

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {p1, v0, p0}, Lg/b;->e(II)V

    goto/16 :goto_104

    :cond_5b
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MSG_TYPE_IPC_TEST"

    invoke-static {p0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->c()Lb/b;

    move-result-object p1

    aget-object v1, p0, v2

    aget-object p0, p0, v0

    invoke-virtual {p1, v1, p0}, Lb/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_104

    :cond_7b
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE:MSG_TYPE_WIFI_TEST"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->R()V

    goto/16 :goto_104

    :cond_8d
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MSG_TYPE:MSG_TYPE_UMBL_REQ"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lc/d;->K(I)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p1

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {p1, v0, p0}, Lc/d;->G(II)V

    goto :goto_c8

    :cond_b1
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE:MSG_TYPE_DB_TEST"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Lc/d;->K(I)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->h()V

    :goto_c8
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->q()V

    goto :goto_104

    :cond_d0
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MSG_TYPE:MSG_TYPE_MANUAL_PS_MODE_TEST"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p1

    div-int/lit8 v0, p0, 0x64

    rem-int/lit8 p0, p0, 0x64

    invoke-virtual {p1, v0, p0}, Lc/d;->r(II)V

    goto :goto_104

    :cond_ed
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE_DAY_OF_CHANGE_REQ"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->o()V

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->b()Lc/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lc/d;->O(Z)V

    :goto_104
    return-void
.end method
