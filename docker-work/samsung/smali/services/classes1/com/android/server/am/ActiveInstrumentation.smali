.class public Lcom/android/server/am/ActiveInstrumentation;
.super Ljava/lang/Object;
.source "ActiveInstrumentation.java"


# instance fields
.field public mArguments:Landroid/os/Bundle;

.field public mClass:Landroid/content/ComponentName;

.field public mCurResults:Landroid/os/Bundle;

.field public mFinished:Z

.field public mHasBackgroundActivityStartsPermission:Z

.field public mHasBackgroundForegroundServiceStartsPermission:Z

.field public mNoRestart:Z

.field public mProfileFile:Ljava/lang/String;

.field public mResultClass:Landroid/content/ComponentName;

.field public final mRunningProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSourceUid:I

.field public mTargetInfo:Landroid/content/pm/ApplicationInfo;

.field public mTargetProcesses:[Ljava/lang/String;

.field public mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field public mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 80
    iput-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mClass="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mFinished="

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRunningProcesses:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 111
    :goto_23
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 115
    :cond_47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTargetProcesses="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTargetInfo="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_84

    .line 120
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 122
    :cond_84
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProfileFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    :cond_96
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_a8

    .line 126
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWatcher="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 128
    :cond_a8
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v0, :cond_ba

    .line 129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiAutomationConnection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_ba
    const-string/jumbo v0, "mHasBackgroundActivityStartsPermission="

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mHasBackgroundForegroundServiceStartsPermission="

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mArguments="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 141
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 143
    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    move v1, v0

    .line 144
    :goto_1a
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 145
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 148
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_39
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    const-wide v5, 0x20900000004L

    .line 149
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 151
    :cond_48
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_54

    const-wide v2, 0x10b00000005L

    .line 152
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/pm/ApplicationInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_54
    const-wide v0, 0x10900000006L

    .line 154
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000007L

    .line 155
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000008L

    .line 156
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    if-eqz p0, :cond_86

    const-wide v0, 0x10b0000000aL

    .line 159
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 161
    :cond_86
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_17

    .line 87
    iget-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ActiveInstrumentation{"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-boolean v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-eqz v1, :cond_2e

    const-string v1, " FINISHED"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string v1, " "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object p0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " procs"

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
