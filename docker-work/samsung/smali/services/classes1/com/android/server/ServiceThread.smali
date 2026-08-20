.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field public final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 40
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 44
    :cond_c
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
