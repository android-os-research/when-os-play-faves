.class public final Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;
.super Ljava/lang/Object;
.source "SoundTriggerSessionPermissionsDecorator.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerSessionPermissionsDecorator"

.field public static final TEMPORARY_PERMISSION_DENIED:I = 0x3


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;Landroid/content/Context;Landroid/media/permission/Identity;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 57
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-void
.end method

.method public static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    .registers 6

    .line 139
    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    .line 150
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected permission check result."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 148
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Failed to obtain permission %s for identity %s"

    .line 147
    invoke-static {p1, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    return-void
.end method

.method public static toString(Landroid/media/permission/Identity;)Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This object isn\'t intended to be used as a Binder."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result p0

    return p0
.end method

.method public final isHoldingPermissions()Z
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoundTriggerSessionPermissionsDecorator"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    return-object p0
.end method

.method public setParameter(III)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->isHoldingPermissions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return p0

    .line 95
    :cond_9
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result p0

    return p0
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->isHoldingPermissions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 75
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return p0

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p0

    return p0
.end method

.method public stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result p0

    return p0
.end method
