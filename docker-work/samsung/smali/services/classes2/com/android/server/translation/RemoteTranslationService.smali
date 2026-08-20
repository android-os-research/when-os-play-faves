.class final Lcom/android/server/translation/RemoteTranslationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteTranslationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/translation/ITranslationService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_IDLE_UNBIND_MS:J = 0x0L

.field public static final TIMEOUT_REQUEST_MS:I = 0x1388


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:J

.field private final mRemoteCallback:Landroid/os/IBinder;

.field private final mRequestTimeoutMs:I


# direct methods
.method public static synthetic $r8$lambda$0TKANU3rMWV-gTQfuhNO9hZTWLc(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->lambda$onSessionCreated$0(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;Landroid/service/translation/ITranslationService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKZSGFv3I0OcvckgM232Zp17dA8(IILandroid/os/ResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->lambda$onTranslationCapabilitiesRequest$1(IILandroid/os/ResultReceiver;Landroid/service/translation/ITranslationService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V
    .registers 14

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.translation.TranslationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p4, :cond_10

    const/high16 p4, 0x400000

    goto :goto_11

    :cond_10
    const/4 p4, 0x0

    :goto_11
    move v5, p4

    .line 54
    new-instance v7, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    const-wide/16 p3, 0x0

    .line 56
    iput-wide p3, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    const/16 p1, 0x1388

    .line 57
    iput p1, p0, Lcom/android/server/translation/RemoteTranslationService;->mRequestTimeoutMs:I

    .line 58
    iput-object p2, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    .line 59
    iput-object p5, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public static synthetic lambda$onSessionCreated$0(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public static synthetic lambda$onTranslationCapabilitiesRequest$1(IILandroid/os/ResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 35
    check-cast p1, Landroid/service/translation/ITranslationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/RemoteTranslationService;->onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V
    .registers 5

    if-eqz p2, :cond_8

    .line 73
    :try_start_2
    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/service/translation/ITranslationService;->onConnected(Landroid/os/IBinder;)V

    goto :goto_28

    .line 75
    :cond_8
    invoke-interface {p1}, Landroid/service/translation/ITranslationService;->onDisconnected()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception p0

    .line 78
    sget-object p1, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 90
    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .registers 5

    .line 96
    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
