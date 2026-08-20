.class public Lcom/android/uiautomator/core/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/Tracer$LogcatSink;,
        Lcom/android/uiautomator/core/Tracer$FileSink;,
        Lcom/android/uiautomator/core/Tracer$TracerSink;,
        Lcom/android/uiautomator/core/Tracer$Mode;
    }
.end annotation


# static fields
.field private static final CALLER_LOCATION:I = 0x6

.field private static final METHOD_TO_TRACE_LOCATION:I = 0x5

.field private static final MIN_STACK_TRACE_LENGTH:I = 0x7

.field private static final UIAUTOMATOR_PACKAGE:Ljava/lang/String; = "com.android.uiautomator.core"

.field private static final UNKNOWN_METHOD_STRING:Ljava/lang/String; = "(unknown method)"

.field private static mInstance:Lcom/android/uiautomator/core/Tracer;


# instance fields
.field private mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

.field private mOutputFile:Ljava/io/File;

.field private mSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/uiautomator/core/Tracer$TracerSink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    return-void
.end method

.method private closeSinks()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/Tracer$TracerSink;

    .line 151
    .local v1, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v1}, Lcom/android/uiautomator/core/Tracer$TracerSink;->close()V

    .line 152
    .end local v1    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    goto :goto_6

    .line 153
    :cond_16
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    return-void
.end method

.method private doTrace([Ljava/lang/Object;)V
    .registers 6
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    if-ne v0, v1, :cond_7

    .line 168
    return-void

    .line 171
    :cond_7
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "caller":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 173
    return-void

    .line 176
    :cond_e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string v3, ", "

    invoke-static {v3, p1}, Lcom/android/uiautomator/core/Tracer;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/Tracer;->log(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static getCaller()Ljava/lang/String;
    .registers 8

    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 260
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const-string v2, "(unknown method)"

    const/4 v3, 0x7

    if-ge v1, v3, :cond_f

    .line 261
    return-object v2

    .line 264
    :cond_f
    const/4 v1, 0x5

    aget-object v3, v0, v1

    .line 265
    .local v3, "caller":Ljava/lang/StackTraceElement;
    const/4 v4, 0x6

    aget-object v4, v0, v4

    .line 267
    .local v4, "previousCaller":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.uiautomator.core"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 268
    const/4 v1, 0x0

    return-object v1

    .line 271
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 272
    .local v5, "indexOfDot":I
    if-gez v5, :cond_30

    .line 273
    const/4 v5, 0x0

    .line 276
    :cond_30
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3d

    .line 277
    return-object v2

    .line 280
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "shortClassName":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    const/4 v6, 0x2

    .line 282
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x4

    .line 283
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    .line 281
    const-string v6, "%s.%s from %s() at %s:%d"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Tracer;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Lcom/android/uiautomator/core/Tracer;

    invoke-direct {v0}, Lcom/android/uiautomator/core/Tracer;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    .line 109
    :cond_b
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    return-object v0
.end method

.method private static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/Object;

    .line 214
    array-length v0, p1

    if-nez v0, :cond_6

    .line 215
    const-string v0, ""

    return-object v0

    .line 217
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 222
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/Tracer$TracerSink;

    .line 181
    .local v1, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v1, p1}, Lcom/android/uiautomator/core/Tracer$TracerSink;->log(Ljava/lang/String;)V

    .line 182
    .end local v1    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    goto :goto_6

    .line 183
    :cond_16
    return-void
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 240
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_16
    const-string v0, "[...]"

    return-object v0

    .line 245
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs trace([Ljava/lang/Object;)V
    .registers 2
    .param p0, "arguments"    # [Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/Tracer;->doTrace([Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public isTracingEnabled()Z
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setOutputFilename(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    .line 164
    return-void
.end method

.method public setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V
    .registers 6
    .param p1, "mode"    # Lcom/android/uiautomator/core/Tracer$Mode;

    .line 119
    invoke-direct {p0}, Lcom/android/uiautomator/core/Tracer;->closeSinks()V

    .line 120
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 122
    :try_start_5
    sget-object v0, Lcom/android/uiautomator/core/Tracer$1;->$SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I

    invoke-virtual {p1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_d} :catch_54

    const-string v1, "Please provide a filename before attempting write trace to a file"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_72

    goto :goto_53

    .line 134
    :pswitch_14
    :try_start_14
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v3, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    invoke-direct {v3, p0, v2}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$LogcatSink-IA;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    if-eqz v0, :cond_2d

    .line 139
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    invoke-direct {v2, p0, v0}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    goto :goto_53

    .line 136
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/uiautomator/core/Tracer;
    .end local p1    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    throw v0

    .line 131
    .restart local p0    # "this":Lcom/android/uiautomator/core/Tracer;
    .restart local p1    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    :pswitch_33
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v1, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    invoke-direct {v1, p0, v2}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$LogcatSink-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_53

    .line 124
    :pswitch_3e
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    if-eqz v0, :cond_4d

    .line 128
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    invoke-direct {v2, p0, v0}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_53

    .line 125
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/uiautomator/core/Tracer;
    .end local p1    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    throw v0
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_53} :catch_54

    .line 146
    .restart local p0    # "this":Lcom/android/uiautomator/core/Tracer;
    .restart local p1    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    :goto_53
    goto :goto_71

    .line 144
    :catch_54
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open log file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tracer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_33
        :pswitch_14
    .end packed-switch
.end method
