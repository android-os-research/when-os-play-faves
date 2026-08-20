.class public Lcom/samsung/android/securefolder/fwwrapper/SemRCMWrapper;
.super Ljava/lang/Object;
.source "SemRCMWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelCopyChunks(Landroid/content/Context;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "rcp"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->cancelCopyChunks(J)V

    return-void
.end method

.method public static copyChunks(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "rcp"

    move-object v1, p0

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    .line 15
    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    return v0
.end method

.method public static copyFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "rcp"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "rcp"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static getFileInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "rcp"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
