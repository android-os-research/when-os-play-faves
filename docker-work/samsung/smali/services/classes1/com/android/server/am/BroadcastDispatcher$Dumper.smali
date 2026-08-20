.class public Lcom/android/server/am/BroadcastDispatcher$Dumper;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dumper"
.end annotation


# instance fields
.field public final mDumpPackage:Ljava/lang/String;

.field public mHeading:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field public mNeedSep:Z

.field public mOrdinal:I

.field public mPrinted:Z

.field public final mPw:Ljava/io/PrintWriter;

.field public final mQueueName:Ljava/lang/String;

.field public final mSdf:Ljava/text/SimpleDateFormat;

.field public final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 6

    .line 121
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    .line 123
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mDumpPackage:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mSdf:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    return-void
.end method


# virtual methods
.method public didPrint()Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    return p0
.end method

.method public dump(Lcom/android/server/am/BroadcastRecord;)V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mDumpPackage:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 148
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_45

    .line 149
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    if-eqz v0, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 152
    :cond_1a
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mHeading:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    :cond_45
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    .line 159
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mSdf:Ljava/text/SimpleDateFormat;

    const-string v1, "    "

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    :cond_70
    return-void
.end method

.method public setHeading(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mHeading:Ljava/lang/String;

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    return-void
.end method
