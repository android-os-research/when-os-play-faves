.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;
.super Landroid/service/voice/VoiceInteractionManagerInternal;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 296
    :cond_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez p0, :cond_11

    return-object v0

    .line 301
    :cond_11
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    return-object p0
.end method

.method public getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    .line 267
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 272
    :cond_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez p0, :cond_11

    return-object v0

    .line 277
    :cond_11
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_23

    .line 278
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1c

    goto :goto_23

    .line 281
    :cond_1c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public hasActiveSession(Ljava/lang/String;)Z
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 256
    :cond_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez p0, :cond_11

    return v0

    .line 262
    :cond_11
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 3

    .line 230
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->supportsLocalVoiceInteraction()Z

    move-result p0

    return p0
.end method
