.class public Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;
.super Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;
.source "KnoxAiManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mNativeTzClient:Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;-><init>()V

    .line 38
    sget-object v0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start KnoxAiManagerService: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->context:Landroid/content/Context;

    .line 40
    new-instance p0, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;

    invoke-direct {p0}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->mNativeTzClient:Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;

    return-void
.end method


# virtual methods
.method public initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I
    .registers 3

    .line 45
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "initializeTaSession is called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->mNativeTzClient:Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I

    move-result p0

    return p0
.end method

.method public processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V
    .registers 5

    .line 57
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "processTaCommand is called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->mNativeTzClient:Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V

    return-void
.end method

.method public terminateTaSession()I
    .registers 2

    .line 51
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "terminateTaSession is called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object p0, Lcom/android/server/enterprise/knoxai/KnoxAiManagerService;->mNativeTzClient:Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;

    invoke-virtual {p0}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->terminateTaSession()I

    move-result p0

    return p0
.end method
