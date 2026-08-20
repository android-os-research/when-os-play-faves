.class public Lcom/android/server/pm/PackageInstallerSession$6;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$addedFiles:Ljava/util/List;

.field public final synthetic val$manualStartAndDestroy:Z

.field public final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field public final synthetic val$removedFiles:Ljava/util/List;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .registers 7

    .line 4258
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(II)V
    .registers 7

    if-eqz p2, :cond_121

    const/4 v0, 0x1

    if-eq p2, v0, :cond_121

    const/4 v1, 0x5

    if-eq p2, v1, :cond_121

    .line 4268
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_113

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_113

    :cond_1a
    const/16 v1, -0x14

    packed-switch p2, :pswitch_data_122

    :pswitch_1f
    goto/16 :goto_112

    .line 4335
    :pswitch_21
    :try_start_21
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "DataLoader reported unrecoverable failure."

    invoke-direct {p1, v1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 4330
    :pswitch_29
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "DataLoader unavailable"

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    goto/16 :goto_112

    .line 4320
    :pswitch_40
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4321
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v2, "Failed to prepare image."

    invoke-static {p2, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 4323
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_112

    .line 4324
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_112

    .line 4307
    :pswitch_5b
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4308
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 4309
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4310
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    .line 4309
    invoke-interface {p2, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    .line 4310
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_81

    .line 4312
    :cond_7c
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4314
    :goto_81
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_112

    .line 4315
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    goto/16 :goto_112

    .line 4299
    :pswitch_90
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    .line 4302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/InstallationFileParcel;

    .line 4301
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/InstallationFileParcel;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$removedFiles:Ljava/util/List;

    .line 4303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 4299
    invoke-interface {p2, p1, v1, v2}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    goto :goto_112

    .line 4291
    :pswitch_b6
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_112

    .line 4294
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    goto :goto_112

    .line 4281
    :pswitch_c4
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_112

    .line 4282
    new-instance p2, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {p2}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    .line 4283
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$addedFiles:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v1, p2, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    .line 4284
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_e7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_21 .. :try_end_e7} :catch_101
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_e7} :catch_e8

    goto :goto_112

    :catch_e8
    move-exception p1

    .line 4344
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4345
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 4344
    invoke-static {p2, v0, p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    goto :goto_112

    :catch_101
    move-exception p1

    .line 4339
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4340
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    :cond_112
    :goto_112
    return-void

    :cond_113
    :goto_113
    const/16 p1, 0x9

    if-eq p2, p1, :cond_118

    return-void

    .line 4271
    :cond_118
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->val$systemDataLoader:Z

    if-eqz p1, :cond_121

    .line 4272
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_121
    return-void

    :pswitch_data_122
    .packed-switch 0x2
        :pswitch_c4
        :pswitch_b6
        :pswitch_90
        :pswitch_1f
        :pswitch_5b
        :pswitch_40
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method
