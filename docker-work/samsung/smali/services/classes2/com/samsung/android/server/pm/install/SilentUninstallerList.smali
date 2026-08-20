.class public Lcom/samsung/android/server/pm/install/SilentUninstallerList;
.super Ljava/lang/Object;
.source "SilentUninstallerList.java"


# instance fields
.field public final allowedSilentUninstallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 17

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.sm.devicesecurity"

    const-string v1, "com.samsung.android.sm.devicesecurity.tcm"

    const-string v2, "com.samsung.android.asksmanager"

    const-string v3, "com.samsung.android.lool"

    const-string v4, "com.samsung.android.sm_cn"

    const-string v5, "com.ws.dm"

    const-string v6, "com.samsung.knox.securefolder"

    const-string v7, "com.android.managedprovisioning"

    const-string v8, "com.samsung.android.app.watchmanagerstub"

    const-string v9, "com.sec.android.AutoPreconfig"

    const-string v10, "com.sec.android.app.myfiles"

    const-string v11, "com.samsung.android.cidmanager"

    const-string v12, "com.samsung.android.timezone.updater"

    const-string v13, "com.sec.android.app.camera"

    const-string v14, "com.sec.android.mimage.photoretouching"

    const-string v15, "com.sec.android.app.vepreload"

    .line 10
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    return-object p0
.end method

.method public isCallerAllowedSilentlyInstall(ILjava/util/function/Function;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
