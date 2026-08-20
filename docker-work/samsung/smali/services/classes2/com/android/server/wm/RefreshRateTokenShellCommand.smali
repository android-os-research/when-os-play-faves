.class public Lcom/android/server/wm/RefreshRateTokenShellCommand;
.super Ljava/lang/Object;
.source "RefreshRateTokenShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;,
        Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;,
        Lcom/android/server/wm/RefreshRateTokenShellCommand$MaxLimitTokenRequest;,
        Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;
    }
.end annotation


# static fields
.field public static final LOW_REFRESH_TOKEN_REQUEST_TAG:Ljava/lang/String; = "-lowRefreshRate"

.field public static final LOW_REFRESH_TOKEN_TAG:Ljava/lang/String; = "WindowManagerCommand-LowRefreshRate"

.field public static final MAX_LIMIT_TOKEN_REQUEST_TAG:Ljava/lang/String; = "-refreshRateMaxLimit"

.field public static final MAX_LIMIT_TOKEN_TAG:Ljava/lang/String; = "WindowManagerCommand-MaxLimit"

.field public static final MIN_LIMIT_TOKEN_REQUEST_TAG:Ljava/lang/String; = "-refreshRateMinLimit"

.field public static final MIN_LIMIT_TOKEN_TAG:Ljava/lang/String; = "WindowManagerCommand-MinLimit"


# instance fields
.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mTokenRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    const-string v0, "display"

    .line 52
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$LowRefreshRateTokenRequest;-><init>(Lcom/android/server/wm/RefreshRateTokenShellCommand;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/RefreshRateTokenShellCommand$MaxLimitTokenRequest;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$MaxLimitTokenRequest;-><init>(Lcom/android/server/wm/RefreshRateTokenShellCommand;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$MinLimitTokenRequest;-><init>(Lcom/android/server/wm/RefreshRateTokenShellCommand;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addTokenRequest(Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand;->mTokenRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;

    .line 62
    invoke-virtual {v0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    array-length p0, p2

    const/4 p1, 0x1

    if-ne p0, p1, :cond_30

    aget-object p0, p2, v1

    if-nez p0, :cond_26

    goto :goto_30

    .line 66
    :cond_26
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->acquire(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_37

    .line 67
    invoke-virtual {v0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->release()V

    goto :goto_37

    .line 64
    :cond_30
    :goto_30
    invoke-virtual {v0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_37
    :goto_37
    return p1

    :cond_38
    return v1
.end method
