.class public Lcom/android/commands/hid/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/hid/Event$Reader;,
        Lcom/android/commands/hid/Event$Builder;,
        Lcom/android/commands/hid/Event$Bus;
    }
.end annotation


# static fields
.field public static final COMMAND_DELAY:Ljava/lang/String; = "delay"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REPORT:Ljava/lang/String; = "report"

.field private static final TAG:Ljava/lang/String; = "HidEvent"


# instance fields
.field private mBus:Lcom/android/commands/hid/Event$Bus;

.field private mCommand:Ljava/lang/String;

.field private mDescriptor:[B

.field private mDuration:I

.field private mFeatureReports:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mOutputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPid:I

.field private mReport:[B

.field private mVid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDescriptor(Lcom/android/commands/hid/Event;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/commands/hid/Event;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/hid/Event;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/hid/Event;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReport(Lcom/android/commands/hid/Event;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBus(Lcom/android/commands/hid/Event;Lcom/android/commands/hid/Event$Bus;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCommand(Lcom/android/commands/hid/Event;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDescriptor(Lcom/android/commands/hid/Event;[B)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDuration(Lcom/android/commands/hid/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFeatureReports(Lcom/android/commands/hid/Event;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmId(Lcom/android/commands/hid/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/hid/Event;->mId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmName(Lcom/android/commands/hid/Event;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOutputs(Lcom/android/commands/hid/Event;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPid(Lcom/android/commands/hid/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/hid/Event;->mPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReport(Lcom/android/commands/hid/Event;[B)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVid(Lcom/android/commands/hid/Event;I)V
    .registers 2

    iput p1, p0, Lcom/android/commands/hid/Event;->mVid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/hid/Event;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    const-string v0, "HidEvent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz p1, :cond_13

    .line 395
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_13
    return-void
.end method


# virtual methods
.method public getBus()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    invoke-virtual {v0}, Lcom/android/commands/hid/Event$Bus;->getValue()I

    move-result v0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()[B
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    return v0
.end method

.method public getFeatureReports()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/commands/hid/Event;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/commands/hid/Event;->mPid:I

    return v0
.end method

.method public getReport()[B
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    return-object v0
.end method

.method public getVendorId()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/commands/hid/Event;->mVid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mVid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mBus:Lcom/android/commands/hid/Event$Bus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature_reports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mFeatureReports:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {v1}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/hid/Event;->mOutputs:Ljava/util/Map;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
