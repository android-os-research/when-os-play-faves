.class public Lcom/samsung/android/sepunion/SemPluginManager;
.super Ljava/lang/Object;
.source "SemPluginManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IPluginManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemPluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IPluginManager;
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    if-nez v0, :cond_1b

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 23
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 24
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/sepunion/IPluginManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IPluginManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    .line 27
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 3

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManager;->getService()Lcom/samsung/android/sepunion/IPluginManager;

    move-result-object v0

    .line 34
    .local v0, "service":Lcom/samsung/android/sepunion/IPluginManager;
    if-eqz v0, :cond_b

    .line 35
    invoke-interface {v0}, Lcom/samsung/android/sepunion/IPluginManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 39
    .end local v0    # "service":Lcom/samsung/android/sepunion/IPluginManager;
    :cond_b
    goto :goto_10

    .line 37
    :catch_c
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method
