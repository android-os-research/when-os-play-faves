.class public Lcom/android/server/DualAppManagerService$OpChangeListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$OpChangeListener;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 7

    const/16 p0, 0x18

    if-ne p1, p0, :cond_5

    return-void

    .line 255
    :cond_5
    sget p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    if-eqz p0, :cond_12

    const-string p0, "DualAppManagerService"

    const-string/jumbo p1, "onOpChanged() is in progress"

    .line 256
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 p0, 0x1

    .line 259
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    const/4 p0, 0x0

    .line 261
    :try_start_16
    invoke-static {}, Lcom/android/server/DualAppManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 263
    invoke-static {}, Lcom/android/server/DualAppManagerService;->-$$Nest$sfgetmInstalledWhitelistedPkgMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_62
    .catchall {:try_start_16 .. :try_end_2c} :catchall_5e

    if-nez v1, :cond_31

    .line 277
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void

    .line 269
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, p1, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, p1, v3, p2, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 273
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "Permission related app op changed"

    invoke-interface {p1, p2, v0, v1}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_62
    .catchall {:try_start_31 .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    .line 277
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 278
    throw p1

    .line 277
    :catch_62
    :goto_62
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onOpChanged() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualAppManagerService"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
