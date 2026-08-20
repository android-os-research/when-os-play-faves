.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field greylist-max-o autoStopProfiler:Z

.field greylist-max-o handlingProfiling:Z

.field greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field greylist-max-o profileFile:Ljava/lang/String;

.field greylist-max-o profiling:Z

.field greylist-max-o samplingInterval:I

.field greylist-max-o streamingOutput:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o setProfiler(Landroid/app/ProfilerInfo;)V
    .registers 4
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1066
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1067
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_e

    .line 1068
    if-eqz v0, :cond_d

    .line 1070
    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1073
    goto :goto_d

    .line 1071
    :catch_c
    move-exception v1

    .line 1075
    :cond_d
    :goto_d
    return-void

    .line 1077
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_17

    .line 1079
    :try_start_12
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 1082
    goto :goto_17

    .line 1080
    :catch_16
    move-exception v1

    .line 1084
    :cond_17
    :goto_17
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1085
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1086
    iget v1, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 1087
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 1088
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 1089
    return-void
.end method

.method public greylist-max-o startProfiling()V
    .registers 10

    .line 1091
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_9

    goto :goto_59

    .line 1095
    :cond_9
    :try_start_9
    const-string v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1096
    .local v0, "bufferSize":I
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x400

    mul-int/lit16 v3, v3, 0x400

    const/4 v4, 0x0

    iget v6, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v8, 0x1

    if-eqz v6, :cond_25

    move v5, v8

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    iget-boolean v7, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    invoke-static/range {v1 .. v7}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1099
    iput-boolean v8, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2d} :catch_2e

    .line 1108
    .end local v0    # "bufferSize":I
    goto :goto_58

    .line 1100
    :catch_2e
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    :try_start_49
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    .line 1107
    goto :goto_58

    .line 1105
    :catch_52
    move-exception v1

    .line 1106
    .local v1, "e2":Ljava/io/IOException;
    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_58
    return-void

    .line 1092
    :cond_59
    :goto_59
    return-void
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 1111
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_18

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 1113
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1114
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    .line 1116
    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    .line 1118
    goto :goto_13

    .line 1117
    :catch_12
    move-exception v0

    .line 1120
    :cond_13
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1121
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1123
    :cond_18
    return-void
.end method
