.class public Lcom/android/server/pm/AsecInstallHelper$2;
.super Ljava/lang/Object;
.source "AsecInstallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$mediaStatus:Z

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    .registers 4

    .line 243
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iget-boolean p0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZZ)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_1b

    :catch_b
    move-exception p0

    const-string v0, "PackageManager"

    const-string/jumbo v1, "updateExternalMediaStatus RuntimeException"

    .line 248
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    const-string/jumbo v0, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    .line 249
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1b
    return-void
.end method
