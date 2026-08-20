.class public Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;
.super Ljava/lang/Object;
.source "IRCPInterfaceWrapper.java"


# static fields
.field private static mIRCPInterface:Landroid/content/IRCPInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFiles(Lcom/samsung/android/knox/SemPersonaManager;ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemRcpCallback;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemRcpCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;

    .line 29
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    invoke-virtual {p5}, Lcom/samsung/android/knox/SemRcpCallback;->getChild()Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IRCPInterface;->copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyFiles2(Lcom/samsung/android/knox/SemPersonaManager;ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemRcpCallback;Ljava/lang/String;)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemRcpCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;

    .line 35
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    invoke-virtual {p5}, Lcom/samsung/android/knox/SemRcpCallback;->getChild()Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/IRCPInterface;->copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;
    .registers 2

    .line 15
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    if-nez v0, :cond_a

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    .line 18
    :cond_a
    sget-object p0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    return-object p0
.end method

.method public static isFileExist(Lcom/samsung/android/knox/SemPersonaManager;Ljava/lang/String;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;

    .line 23
    sget-object p0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    invoke-interface {p0, p1, p2}, Landroid/content/IRCPInterface;->isFileExist(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static moveFiles(Lcom/samsung/android/knox/SemPersonaManager;ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemRcpCallback;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemRcpCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;

    .line 40
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    invoke-virtual {p5}, Lcom/samsung/android/knox/SemRcpCallback;->getChild()Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IRCPInterface;->moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static moveFiles2(Lcom/samsung/android/knox/SemPersonaManager;ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemRcpCallback;Ljava/lang/String;)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemRcpCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->getInstance(Lcom/samsung/android/knox/SemPersonaManager;)Landroid/content/IRCPInterface;

    .line 45
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IRCPInterfaceWrapper;->mIRCPInterface:Landroid/content/IRCPInterface;

    invoke-virtual {p5}, Lcom/samsung/android/knox/SemRcpCallback;->getChild()Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/IRCPInterface;->moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method
