.class final Lcom/android/server/am/ReceiverList;
.super Ljava/util/ArrayList;
.source "ReceiverList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public final app:Lcom/android/server/am/ProcessRecord;

.field public curBroadcast:Lcom/android/server/am/BroadcastRecord;

.field public linkedToDeath:Z

.field public final owner:Lcom/android/server/am/ActivityManagerService;

.field public final pid:I

.field public final receiver:Landroid/content/IIntentReceiver;

.field public stringName:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V
    .registers 8

    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 55
    iput-object p1, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iput-object p6, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    .line 57
    iput-object p2, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 58
    iput p3, p0, Lcom/android/server/am/ReceiverList;->pid:I

    .line 59
    iput p4, p0, Lcom/android/server/am/ReceiverList;->uid:I

    .line 60
    iput p5, p0, Lcom/android/server/am/ReceiverList;->userId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 73
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method public containsFilter(Landroid/content/IntentFilter;)Z
    .registers 6

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_19

    .line 79
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    .line 80
    invoke-static {v3, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 117
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_4c

    .line 122
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Filter #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": BroadcastFilter{"

    .line 124
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x7d

    .line 126
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 127
    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_4c
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 89
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 90
    iget v0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 91
    iget v0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 92
    iget v0, p0, Lcom/android/server/am/ReceiverList;->userId:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 93
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_38

    const-wide v1, 0x10b00000005L

    .line 94
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_38
    const-wide v0, 0x10800000006L

    .line 96
    iget-boolean v2, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 97
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_5a

    .line 99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    const-wide v3, 0x20b00000007L

    .line 100
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/BroadcastFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_5a
    const-wide v0, 0x10900000008L

    .line 102
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pid="

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " user="

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v0, :cond_52

    .line 111
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "curBroadcast="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " linkedToDeath="

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_52
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 68
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ReceiverList{"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    iget v2, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_30

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_32

    :cond_30
    const-string v1, "(unknown name)"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_56

    const-string v1, " local:"

    goto :goto_58

    :cond_56
    const-string v1, " remote:"

    :goto_58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_6f

    .line 151
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_6f
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    return-object v0
.end method
