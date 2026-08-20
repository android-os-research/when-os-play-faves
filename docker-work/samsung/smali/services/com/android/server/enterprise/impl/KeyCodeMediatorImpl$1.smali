.class public Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;
.super Ljava/lang/Object;
.source "KeyCodeMediatorImpl.java"

# interfaces
.implements Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 56
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public knoxSdkFileLogD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-static {p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public knoxSdkFileLogW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-static {p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
