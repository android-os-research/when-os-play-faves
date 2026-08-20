.class public Lcom/android/internal/telephony/imsphone/ImsPhone$SS;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SS"
.end annotation


# instance fields
.field blacklist mCfAction:I

.field blacklist mCfReason:I

.field blacklist mClirMode:I

.field blacklist mDialingNumber:Ljava/lang/String;

.field blacklist mEnable:Z

.field blacklist mFacility:Ljava/lang/String;

.field blacklist mLockState:Z

.field public blacklist mOnComplete:Landroid/os/Message;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field blacklist mPassword:Ljava/lang/String;

.field blacklist mServiceClass:I

.field blacklist mTimerSeconds:I


# direct methods
.method constructor blacklist <init>(IILandroid/os/Message;)V
    .registers 4

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 436
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 437
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 7

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfAction:I

    .line 444
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 445
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    .line 446
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 447
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mTimerSeconds:I

    .line 448
    iput-object p6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Message;)V
    .registers 3

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mClirMode:I

    .line 423
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Message;)V
    .registers 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 454
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 455
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 456
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 463
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mLockState:Z

    .line 464
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 465
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 466
    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ZILandroid/os/Message;)V
    .registers 4

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mEnable:Z

    .line 429
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 430
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method
