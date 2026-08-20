.class public abstract Lcom/android/server/vr/XrManagerInternal;
.super Ljava/lang/Object;
.source "XrManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getXrManagerService()Lcom/android/server/vr/XrManagerService;
.end method

.method public abstract isARServiceInstalled()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isVrServiceInstalled()Z
.end method
