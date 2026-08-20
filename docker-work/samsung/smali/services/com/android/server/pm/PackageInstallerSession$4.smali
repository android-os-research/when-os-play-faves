.class public Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 773
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 13

    .line 776
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_85

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_13

    goto/16 :goto_90

    .line 810
    :cond_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 811
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 812
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_90

    .line 787
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 788
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 789
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 790
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 791
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/IntentSender;

    .line 792
    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 793
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 795
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmInstallLogger(Lcom/android/server/pm/PackageInstallerSession;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 796
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result p1

    if-eqz p1, :cond_69

    if-ne v1, v8, :cond_5c

    .line 798
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmInstallLogger(Lcom/android/server/pm/PackageInstallerSession;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->finishInstallTimeInfo(I)V

    goto :goto_69

    .line 800
    :cond_5c
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmInstallLogger(Lcom/android/server/pm/PackageInstallerSession;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->abandonInstallTimeInfo(I)V

    .line 804
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 805
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 804
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_90

    .line 784
    :cond_7f
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_90

    .line 781
    :cond_85
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_90

    .line 778
    :cond_8b
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_90
    return v1
.end method
