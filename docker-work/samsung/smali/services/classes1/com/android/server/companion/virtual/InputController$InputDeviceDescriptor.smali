.class final Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputDeviceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor$Type;
    }
.end annotation


# static fields
.field public static final TYPE_KEYBOARD:I = 0x1

.field public static final TYPE_MOUSE:I = 0x2

.field public static final TYPE_TOUCHSCREEN:I = 0x3

.field public static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mCreationOrderNumber:J

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayId:I

.field public final mFd:I

.field public final mPhys:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 445
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder$DeathRecipient;IILjava/lang/String;)V
    .registers 6

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mFd:I

    .line 458
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 459
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 460
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 461
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 462
    sget-object p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-void
.end method


# virtual methods
.method public getCreationOrderNumber()J
    .registers 3

    .line 486
    iget-wide v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-wide v0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 482
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    return p0
.end method

.method public getFileDescriptor()I
    .registers 1

    .line 466
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mFd:I

    return p0
.end method

.method public getPhys()Ljava/lang/String;
    .registers 1

    .line 490
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 470
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    return p0
.end method

.method public isMouse()Z
    .registers 2

    .line 474
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
