.class public Lcom/android/commands/uinput/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/Event$Reader;,
        Lcom/android/commands/uinput/Event$Builder;,
        Lcom/android/commands/uinput/Event$Bus;
    }
.end annotation


# static fields
.field private static final ABS_CNT:I = 0x40

.field public static final COMMAND_DELAY:Ljava/lang/String; = "delay"

.field public static final COMMAND_INJECT:Ljava/lang/String; = "inject"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "UinputEvent"


# instance fields
.field private mAbsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBus:Lcom/android/commands/uinput/Event$Bus;

.field private mCommand:Ljava/lang/String;

.field private mConfiguration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mFfEffectsMax:I

.field private mId:I

.field private mInjections:[I

.field private mName:Ljava/lang/String;

.field private mPid:I

.field private mVid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mCommand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Event;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/commands/uinput/Event;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/uinput/Event;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/uinput/Event;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/uinput/Event;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjections(Lcom/android/commands/uinput/Event;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAbsInfo(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mAbsInfo:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBus(Lcom/android/commands/uinput/Event;Lcom/android/commands/uinput/Event$Bus;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mBus:Lcom/android/commands/uinput/Event$Bus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCommand(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mCommand:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConfiguration(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDuration(Lcom/android/commands/uinput/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/uinput/Event;->mDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFfEffectsMax(Lcom/android/commands/uinput/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmId(Lcom/android/commands/uinput/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/uinput/Event;->mId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInjections(Lcom/android/commands/uinput/Event;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmName(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPid(Lcom/android/commands/uinput/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/uinput/Event;->mPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVid(Lcom/android/commands/uinput/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/uinput/Event;->mVid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/uinput/Event;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    const-string v0, "UinputEvent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-eqz p1, :cond_13

    .line 451
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_13
    return-void
.end method


# virtual methods
.method public getAbsInfo()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mAbsInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getBus()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mBus:Lcom/android/commands/uinput/Event$Bus;

    invoke-virtual {v0}, Lcom/android/commands/uinput/Event$Bus;->getValue()I

    move-result v0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/commands/uinput/Event;->mDuration:I

    return v0
.end method

.method public getFfEffectsMax()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/android/commands/uinput/Event;->mId:I

    return v0
.end method

.method public getInjections()[I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/commands/uinput/Event;->mPid:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/commands/uinput/Event;->mVid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mVid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mBus:Lcom/android/commands/uinput/Event$Bus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mInjections:[I

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/uinput/Event;->mConfiguration:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ff_effects_max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Event;->mFfEffectsMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method
