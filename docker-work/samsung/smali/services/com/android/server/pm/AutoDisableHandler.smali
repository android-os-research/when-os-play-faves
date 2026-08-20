.class public Lcom/android/server/pm/AutoDisableHandler;
.super Ljava/lang/Object;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AutoDisableHandler$ADHandler;,
        Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
    }
.end annotation


# static fields
.field public static final MARS_AD_UPDATE_PACKAGES_MSG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AutoDisableHandler"


# instance fields
.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

.field public mContext:Landroid/content/Context;

.field public mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/AutoDisableHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    .line 38
    new-instance p1, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;

    const-string p2, "AutoDisableThread"

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;-><init>(Lcom/android/server/pm/AutoDisableHandler;Ljava/lang/String;I)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public sendAutoDisabledAppStateChanged(Ljava/lang/String;IZ)V
    .registers 6

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "isGoogleChanged"

    .line 105
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    iget-object p1, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
