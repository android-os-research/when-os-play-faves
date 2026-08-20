.class public abstract Lcom/android/internal/telephony/SemBaseCommands;
.super Ljava/lang/Object;
.source "SemBaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/SemCommandsInterface;


# instance fields
.field public blacklist m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

.field public greylist mContext:Landroid/content/Context;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public blacklist mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

.field public blacklist mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSapRegistant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist getAtr(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist getModemCapability(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist notifySimPbReady()V
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_7

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_7
    return-void
.end method

.method public blacklist registerFor5gStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 136
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCallDetailsChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 325
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForCsFallback(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 170
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForExtendedRegState(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 196
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNrBearerAllocationChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNrIconTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRRCStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 296
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForSignalBarInfoChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 182
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 257
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForSimOnOffNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 209
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 249
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForVendorConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerT3346Timer(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 116
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 240
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 230
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 273
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 220
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 281
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 265
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist unSetOnCatCallControlResult(Landroid/os/Handler;)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnCatSendSmsResult(Landroid/os/Handler;)V
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnPbInitComplete(Landroid/os/Handler;)V
    .registers 2

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnSimPbReady(Landroid/os/Handler;)V
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unSetOnSmsDeviceReady(Landroid/os/Handler;)V
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterFor5gStatusChange(Landroid/os/Handler;)V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForAcbInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCallDetailsChanged(Landroid/os/Handler;)V
    .registers 2

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForCsFallback(Landroid/os/Handler;)V
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForExtendedRegState(Landroid/os/Handler;)V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 202
    iget-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unregisterForImsPrefValue(Landroid/os/Handler;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNrBearerAllocationChange(Landroid/os/Handler;)V
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNrIconTypeChange(Landroid/os/Handler;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRRCStateChange(Landroid/os/Handler;)V
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSap(Landroid/os/Handler;)V
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForSignalBarInfoChange(Landroid/os/Handler;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method

.method public blacklist unregisterForSimCountMismatched(Landroid/os/Handler;)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimOnOffNoti(Landroid/os/Handler;)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimSwaped(Landroid/os/Handler;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVendorConfigurationChanged(Landroid/os/Handler;)V
    .registers 2

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterT3346Timer(Landroid/os/Handler;)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist updateStackBinding(IILandroid/os/Message;)V
    .registers 4

    return-void
.end method
