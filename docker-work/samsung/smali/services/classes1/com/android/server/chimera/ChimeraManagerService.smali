.class public Lcom/android/server/chimera/ChimeraManagerService;
.super Lcom/samsung/android/chimera/IChimera$Stub;
.source "ChimeraManagerService.java"


# static fields
.field public static final SYSTEM_PROPERTY_CHIMERA_ONOFF:Ljava/lang/String; = "persist.config.chimera.enable"

.field public static final TAG:Ljava/lang/String; = "ChimeraManagerService"


# instance fields
.field public mChimeraManager:Lcom/android/server/chimera/ChimeraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/chimera/IChimera$Stub;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    const-string/jumbo v0, "persist.config.chimera.enable"

    const-string v1, ""

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "true"

    if-nez v2, :cond_20

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 28
    :cond_20
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 31
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 32
    new-instance v0, Lcom/android/server/chimera/ChimeraManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/chimera/ChimeraManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    :cond_31
    return-void
.end method


# virtual methods
.method public collectStandbyBucket()V
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_7

    .line 79
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->collectStandbyBucket()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_2f

    .line 39
    array-length p1, p3

    if-eqz p1, :cond_2f

    const/4 p1, 0x0

    .line 41
    array-length v0, p3

    if-eqz v0, :cond_2f

    .line 42
    :goto_9
    array-length v0, p3

    if-ge p1, v0, :cond_2f

    .line 43
    aget-object v0, p3, p1

    const-string v1, "-enable_chimera"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "persist.config.chimera.enable"

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "true"

    .line 45
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v1, "-disable_chimera"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "forcestop"

    .line 49
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 58
    :cond_2f
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_36

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/android/server/chimera/ChimeraManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public getChimeraManager()Lcom/android/server/chimera/ChimeraManager;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    return-object p0
.end method

.method public getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_9

    .line 66
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRescheduleExceptionPackage(Ljava/lang/String;)Z
    .registers 2

    .line 74
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/RestartImmediatePackages;->hasPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
