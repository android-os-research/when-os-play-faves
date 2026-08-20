.class public Lcom/android/server/resources/ResourcesManagerService$1;
.super Landroid/content/res/IResourcesManager$Stub;
.source "ResourcesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/resources/ResourcesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/resources/ResourcesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/resources/ResourcesManagerService;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-direct {p0}, Landroid/content/res/IResourcesManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-static {p0}, Lcom/android/server/resources/ResourcesManagerService;->-$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->dumpAllResources(Landroid/os/ParcelFileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_2a

    :catch_e
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while trying to dump all resources: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_2a
    return-void
.end method

.method public dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_17

    :cond_b
    const/4 p0, 0x0

    .line 67
    invoke-virtual {p3, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 68
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "dump should only be called by shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-static {p0}, Lcom/android/server/resources/ResourcesManagerService;->-$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result p0

    return p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 89
    new-instance v0, Lcom/android/server/resources/ResourcesManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;-><init>(Landroid/content/res/IResourcesManager;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 93
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
