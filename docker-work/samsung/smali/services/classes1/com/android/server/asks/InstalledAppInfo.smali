.class public Lcom/android/server/asks/InstalledAppInfo;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public accessibility:Ljava/lang/String;

.field public execute:Ljava/lang/String;

.field public initType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public overlay:Ljava/lang/String;

.field public requestInstallerZip:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    const-string v0, "allow"

    .line 91
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    const-string v0, "block"

    .line 92
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    const-string v0, "false"

    .line 93
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    const-string/jumbo v1, "warning"

    .line 94
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 98
    iput-object p1, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    return-void
.end method
