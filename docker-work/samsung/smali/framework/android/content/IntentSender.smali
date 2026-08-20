.class public Landroid/content/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentSender$FinishedDispatcher;,
        Landroid/content/IntentSender$OnFinished;,
        Landroid/content/IntentSender$SendIntentException;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

.field private final greylist mTarget:Landroid/content/IIntentSender;

.field greylist-max-o mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/content/IntentSender$1;

    invoke-direct {v0}, Landroid/content/IntentSender$1;-><init>()V

    sput-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/IIntentSender;)V
    .registers 2
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 392
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"    # Landroid/os/IBinder;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 397
    iput-object p2, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 398
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/os/IBinder;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 403
    return-void
.end method

.method private blacklist getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    if-nez v0, :cond_17

    .line 408
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 411
    goto :goto_17

    .line 409
    :catch_11
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method public static whitelist readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 373
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 374
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public static whitelist writeIntentSenderOrNullToParcel(Landroid/content/IntentSender;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "sender"    # Landroid/content/IntentSender;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 358
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a

    .line 359
    :cond_9
    const/4 v0, 0x0

    .line 358
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 360
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 305
    instance-of v0, p1, Landroid/content/IntentSender;

    if-eqz v0, :cond_18

    .line 306
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/content/IntentSender;

    iget-object v1, v1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 307
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 309
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreatorPackage()Ljava/lang/String;
    .registers 2

    .line 266
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCreatorUid()I
    .registers 2

    .line 279
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getCreatorUserHandle()Landroid/os/UserHandle;
    .registers 4

    .line 294
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    .line 295
    .local v0, "uid":I
    if-lez v0, :cond_14

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public greylist getTarget()Landroid/content/IIntentSender;
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public whitelist getTargetPackage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWhitelistToken()Landroid/os/IBinder;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 162
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 194
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public blacklist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 231
    const/4 v0, 0x0

    if-eqz v11, :cond_16

    .line 232
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_17

    .line 243
    :catch_12
    move-exception v0

    move-object/from16 v13, p5

    goto :goto_45

    .line 233
    :cond_16
    move-object v7, v0

    :goto_17
    nop

    .line 234
    .local v7, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    iget-object v4, v1, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 236
    if-eqz v12, :cond_2b

    .line 237
    new-instance v0, Landroid/content/IntentSender$FinishedDispatcher;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_12

    move-object/from16 v13, p5

    :try_start_26
    invoke-direct {v0, p0, v12, v13}, Landroid/content/IntentSender$FinishedDispatcher;-><init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    move-object v8, v0

    goto :goto_2e

    .line 238
    :cond_2b
    move-object/from16 v13, p5

    move-object v8, v0

    .line 234
    :goto_2e
    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 240
    .local v0, "res":I
    if-ltz v0, :cond_3e

    .line 245
    .end local v0    # "res":I
    .end local v7    # "resolvedType":Ljava/lang/String;
    nop

    .line 246
    return-void

    .line 241
    .restart local v0    # "res":I
    .restart local v7    # "resolvedType":Ljava/lang/String;
    :cond_3e
    new-instance v2, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v2}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local p0    # "this":Landroid/content/IntentSender;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "onFinished":Landroid/content/IntentSender$OnFinished;
    .end local p5    # "handler":Landroid/os/Handler;
    .end local p6    # "requiredPermission":Ljava/lang/String;
    .end local p7    # "options":Landroid/os/Bundle;
    throw v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_44} :catch_44

    .line 243
    .end local v0    # "res":I
    .end local v7    # "resolvedType":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/IntentSender;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "code":I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "onFinished":Landroid/content/IntentSender$OnFinished;
    .restart local p5    # "handler":Landroid/os/Handler;
    .restart local p6    # "requiredPermission":Ljava/lang/String;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_44
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    :goto_45
    new-instance v2, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v2}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 320
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 333
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 334
    return-void
.end method
