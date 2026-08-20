.class public Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final SUCCESS:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public cancel(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v0, "cancel"

    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel() session id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelCopyChunks(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v0, "cancelCopyChunks"

    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel CopyChunks() session Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 533
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, "/mnt/extSdCard"

    .line 534
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_4f

    const-string v0, "/mnt/sdcard"

    if-eqz p0, :cond_18

    :try_start_10
    const-string p0, "^/mnt/extSdCard"

    .line 535
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_16
    move-object p2, p0

    goto :goto_5c

    :cond_18
    const-string p0, "/storage/extSdCard"

    .line 537
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "^/storage/extSdCard"

    .line 538
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_27
    const-string p0, "/storage/"

    .line 540
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 541
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    const/16 v1, 0x9

    .line 542
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 542
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_4e} :catch_4f

    goto :goto_16

    :catch_4f
    move-exception p0

    .line 546
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 547
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "changeExtSdPath(): npe has occured"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-object p2
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, -0x2ed993

    return p0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFile"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mgetFilesPolicy(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    if-eqz v0, :cond_71

    .line 441
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; exportCheck="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 448
    :cond_71
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v1, 0x2

    invoke-static {v0, p3, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mgetFilesPolicy(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    if-eqz v0, :cond_9b

    .line 450
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; importCheck="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 456
    :cond_9b
    invoke-virtual {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 458
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSemRemoteContentManager(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_6d

    .line 125
    :cond_63
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_76

    .line 123
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :goto_76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_COPY_FILES"

    .line 131
    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    .line 132
    invoke-virtual {p4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    .line 133
    invoke-virtual {p4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    .line 134
    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "destFilePaths"

    .line 135
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    new-instance p2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p5

    invoke-direct {p2, p5}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string p5, "callBackMessenger"

    .line 138
    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 141
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles() ,mSessionId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string/jumbo p5, "sessionId"

    invoke-virtual {p4, p5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-nez p1, :cond_e8

    move p1, p3

    .line 149
    :cond_e8
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_f1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_ff} :catch_100

    goto :goto_104

    :catch_100
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_104
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "copyFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles2() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFiles2() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , SourceClassName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_75

    .line 170
    :cond_6b
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7e

    .line 168
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_7e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_COPY_FILES"

    .line 176
    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    .line 177
    invoke-virtual {p4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "destContainerId"

    .line 178
    invoke-virtual {p4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srcFilePaths"

    .line 179
    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "destFilePaths"

    .line 180
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p2, "sourceClassName"

    .line 181
    invoke-virtual {p4, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance p2, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p5

    invoke-direct {p2, p5}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string p5, "callBackMessenger"

    .line 184
    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p5

    const-wide v1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p5, v1

    double-to-long p5, p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 187
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFiles2() ,mSessionId :"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    const-string/jumbo v1, "sessionId"

    invoke-virtual {p4, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 190
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-nez p1, :cond_f6

    move p1, p3

    .line 195
    :cond_f6
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "copyFiles2(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_ff
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10d} :catch_10e

    goto :goto_112

    :catch_10e
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_112
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v0, "getErrorMessage"

    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getErrorMessage(): errorId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "General error"

    return-object p0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "getFileInfo"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get File Info : path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSemRemoteContentManager(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v0, "getFiles"

    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 492
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get filesg ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "isFileExist"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exist checking ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSemRemoteContentManager(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo p1, "moveFile"

    invoke-static {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 467
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR || Deprecated API level - move file"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_70

    .line 216
    :cond_66
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_79

    .line 214
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :goto_79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    .line 222
    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    .line 223
    invoke-virtual {p4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "destContainerId"

    .line 224
    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "srcFilePaths"

    .line 225
    invoke-virtual {p4, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "destFilePaths"

    .line 226
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    new-instance p1, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string p2, "callBackMessenger"

    .line 229
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide v1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p1, v1

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 232
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "moveFiles ,mSessionId :"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-string/jumbo p5, "sessionId"

    invoke-virtual {p4, p5, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_f3
    iget-object p2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserHandle(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_102} :catch_103

    goto :goto_107

    :catch_103
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    :goto_107
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles2() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles2() destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , SourceClassName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_78

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_78

    .line 257
    :cond_6e
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_81

    .line 255
    :cond_78
    :goto_78
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :goto_81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    const-string v3, "TASK_MOVE_FILES"

    .line 263
    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srcContainerId"

    .line 264
    invoke-virtual {p4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "destContainerId"

    .line 265
    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "srcFilePaths"

    .line 266
    invoke-virtual {p4, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "destFilePaths"

    .line 267
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "sourceClassName"

    .line 268
    invoke-virtual {p4, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance p1, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const-string p2, "callBackMessenger"

    .line 271
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p1, p5

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 274
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "moveFiles2 ,mSessionId :"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-string/jumbo p5, "sessionId"

    invoke-virtual {p4, p5, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 277
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "moveFiles2(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_101
    iget-object p2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserHandle(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_110} :catch_111

    goto :goto_115

    :catch_111
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :goto_115
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 308
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo p1, "moveFilesForApp"

    invoke-static {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR || Deprecated API level - move files for app"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFilesForApp"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserId(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez p2, :cond_1c

    .line 377
    :try_start_12
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR | move Files For App Ex | invalid source file Paths, paths are null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 380
    :cond_1c
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveFilesForAppEx() srcContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; srcFilePaths="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveFilesForAppEx() destContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; destFilePaths="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveFilesForAppEx() reqApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    new-instance p3, Landroid/content/Intent;

    const-string v5, "com.sec.knox.bridge.MOVE_TO_KNOX"

    invoke-direct {p3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 388
    invoke-virtual {p3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "task"

    const-string v7, "TASK_MOVE_FILES"

    .line 390
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "requestApp"

    .line 391
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "srcContainerId"

    .line 392
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "destContainerId"

    .line 393
    invoke-virtual {v5, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "fileCount"

    .line 394
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "srcFilePaths"

    .line 396
    invoke-virtual {v5, p1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "destFilePaths"

    .line 397
    invoke-virtual {v5, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "moveToFor"

    const-string p2, "File"

    .line 398
    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, -0x3e8

    if-ne p4, p1, :cond_12d

    .line 403
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Need to Create secure Folder"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mgetSecureFolderId(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_12d

    const-string/jumbo p1, "isSilent"

    const/4 p2, 0x1

    .line 405
    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    invoke-virtual {p3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/os/UserHandle;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, p3, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-wide v1

    .line 413
    :cond_12d
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_176

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    goto :goto_176

    .line 416
    :cond_13a
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_151

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_147

    goto :goto_151

    .line 420
    :cond_147
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR | move Files For App Ex | invalid container id is -1"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 417
    :cond_151
    :goto_151
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerAgentSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_19a

    .line 414
    :cond_176
    :goto_176
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :goto_19a
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserHandle(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_1a9} :catch_1aa

    goto :goto_1ae

    :catch_1aa
    move-exception p0

    .line 425
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1ae
    return-wide v1
.end method

.method public moveUnlimitedFiles(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo p1, "moveFiles"

    invoke-static {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR || Deprecated API level - move unlimited files"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public moveUnlimitedFiles2(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo p1, "moveFiles"

    invoke-static {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR || Deprecated API level - move unlimited files2"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "moveFilesForApp"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserId(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    .line 321
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveUnlimitedFilesForApp() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_34
    const-string/jumbo v3, "null"

    :goto_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; fileCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reqApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 323
    :try_start_58
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.knox.bridge.MOVE_TO_KNOX"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "task"

    const-string v6, "TASK_MOVE_FILES"

    .line 326
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "requestApp"

    .line 327
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "srcContainerId"

    .line 328
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "destContainerId"

    .line 329
    invoke-virtual {v4, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "fileCount"

    .line 330
    invoke-virtual {v4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "moveToFor"

    const-string p3, "File"

    .line 331
    invoke-virtual {v4, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "isUnlimitedSharing"

    const/4 p3, 0x1

    .line 332
    invoke-virtual {v4, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "unlimitedMoveUri"

    .line 333
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, -0x3e8

    if-ne p4, p1, :cond_f0

    .line 338
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Need to Create secure Folder"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mgetSecureFolderId(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_f0

    const-string/jumbo p1, "isSilent"

    .line 340
    invoke-virtual {v4, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 342
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/os/UserHandle;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, v3, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-wide v1

    .line 348
    :cond_f0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_139

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_fd

    goto :goto_139

    .line 351
    :cond_fd
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_114

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_10a

    goto :goto_114

    .line 355
    :cond_10a
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR | move Files For App Ex | invalid container id is -1"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 352
    :cond_114
    :goto_114
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContainerAgentSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_15d

    .line 349
    :cond_139
    :goto_139
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p3}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmSecureFolderSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :goto_15d
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$fgetmDelegateUserHandle(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p2, v3, p0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_16c} :catch_16d

    goto :goto_171

    :catch_16d
    move-exception p0

    .line 361
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_171
    return-wide v1
.end method
